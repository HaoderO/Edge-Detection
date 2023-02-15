LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY PARA_COMM IS
PORT (
	    CLK_30M     : IN    STD_LOGIC;						--系统输入时钟30MHz
--------------------------FPGA&DAC----------------------------------
		RAMB_OUT    : OUT   STD_LOGIC_VECTOR(15 DOWNTO 0);	--RAM_B输出，接DAC输入
        CLK_DAC     : OUT   STD_LOGIC;						--DAC时钟50MHz
--------------------------FPGA&ADC----------------------------------
		BUSY     	: IN  	STD_LOGIC;						--AD转换开始标志
		FIRSTDATA	: IN  	STD_LOGIC;						--第一个通道输出标志
		INDATA      : IN  	STD_LOGIC_VECTOR(15 DOWNTO 0);	--AD采样结果
		RESTOUT  	: OUT  	STD_LOGIC;						--AD复位信号输出
		CONVENT4 	: OUT 	STD_LOGIC;						--16位采样结果
		CS       	: OUT 	STD_LOGIC;						--下一通道输出标志
		RD       	: OUT 	STD_LOGIC;						--下一通道输出标志
--------------------------FPGA&DSP----------------------------------
        XZCS_7      : IN    STD_LOGIC := '1';				--DSP的ZONE7片选使能标志
        XRD         : IN    STD_LOGIC := '1';				--DSP读使能标志
        XWE         : IN    STD_LOGIC := '1';				--DSP写使能标志
		XA          : IN    STD_LOGIC_VECTOR(11 DOWNTO 0);	--通信地址总线
		XD          : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)	--双向信数据总线
    );
END ENTITY;

ARCHITECTURE A OF PARA_COMM IS

--------------------Signal wires----------------------------------
SIGNAL CLK_75M      : STD_LOGIC;
SIGNAL WREN_A       : STD_LOGIC := '0';
SIGNAL RDEN_A       : STD_LOGIC := '0';
SIGNAL WREN_B       : STD_LOGIC := '0';
SIGNAL RDEN_B       : STD_LOGIC := '0';
SIGNAL ADDRESS_A    : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";
SIGNAL ADDRESS_B    : STD_LOGIC_VECTOR(11 DOWNTO 0) := "100000000000";
SIGNAL Q_A          : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DATA_B       : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL RAMA_IN  	: STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL CHANNEL    	: STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AD_DATA_FLAG	: STD_LOGIC;

--------------------Components----------------------------------
COMPONENT PLL_IP IS							     --锁相环IP核
	PORT
	(
		inclk0		: IN 	STD_LOGIC  := '0'	;--30MHz
		c0			: OUT 	STD_LOGIC 			;--75MHz
		c1			: OUT 	STD_LOGIC 			 --50MHz
	);
END COMPONENT;

COMPONENT DATABUS_SWAP IS						--双向总线控制模块
PORT (
        XRD         : IN     STD_LOGIC;
        XWE         : IN     STD_LOGIC;
		XD          : INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
		Q_A         : IN     STD_LOGIC_VECTOR(15 DOWNTO 0);
		DATA_B      : OUT    STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END COMPONENT;

COMPONENT FPGAWR_DSPRE_CTRL IS					--FPGA写DSP读控制模块
PORT (
        SYS_CLK     : IN     STD_LOGIC;
        XA          : IN     STD_LOGIC_VECTOR(11 DOWNTO 0);
        XZCS_7      : IN     STD_LOGIC := '1';
        XRD         : IN     STD_LOGIC := '1';
        WREN_A      : BUFFER STD_LOGIC := '0';
        RDEN_A      : BUFFER STD_LOGIC := '0';
        ADDRESS_A   : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0);
        ADDRESS_CH  : IN     STD_LOGIC_VECTOR(3 DOWNTO 0);
        VALID_FLAG  : IN     STD_LOGIC
    );
END COMPONENT;

COMPONENT DSPWR_FPGARE_CTRL IS					--DSP写FPGA读控制模块
PORT 
	(
		SYS_CLK     : IN     STD_LOGIC;
		XA          : IN     STD_LOGIC_VECTOR(11 DOWNTO 0);
		XZCS_7      : IN     STD_LOGIC := '1';
		XWE         : IN     STD_LOGIC := '1';
		RDEN_B      : BUFFER STD_LOGIC := '1';
		WREN_B      : BUFFER STD_LOGIC := '0';
		ADDRESS_B   : BUFFER STD_LOGIC_VECTOR(11 DOWNTO 0)
    );
END COMPONENT;

COMPONENT RAM_2_PORT IS							--真双口RAM IP核
	PORT
	(
		address_a	: IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
		address_b	: IN  STD_LOGIC_VECTOR (11 DOWNTO 0);
		clock		: IN  STD_LOGIC  := '1';
		data_a		: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		data_b		: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		rden_a		: IN  STD_LOGIC  := '1';
		rden_b		: IN  STD_LOGIC  := '1';
		wren_a		: IN  STD_LOGIC  := '0';
		wren_b		: IN  STD_LOGIC  := '0';
		q_a		    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
		q_b		    : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT AD7606_DRIVER IS						--AD7606驱动模块
	PORT
	( 
		CLK      	: IN  STD_LOGIC;
		BUSY     	: IN  STD_LOGIC;
		FIRSTDATA	: IN  STD_LOGIC;
		INDATA   	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		RESTOUT  	: OUT  STD_LOGIC;
		OUTDATA  	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		ARESS    	: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		CONVENT4 	: OUT STD_LOGIC;
		CS       	: OUT STD_LOGIC;
		RD       	: OUT STD_LOGIC;
		CH_EN    	: OUT STD_LOGIC
	);
END COMPONENT;

BEGIN

U0 : PLL_IP PORT MAP
	(
		inclk0	 	=> CLK_30M		,
		c0	 		=> CLK_75M		,
		c1	 		=> CLK_DAC
	);

U1 : DATABUS_SWAP PORT MAP 
	(
        XRD         => XRD			,
        XWE         => XWE			,
		XD          => XD			,
		Q_A         => Q_A			,
		DATA_B      => DATA_B
	);

U2 : FPGAWR_DSPRE_CTRL PORT MAP 
	(
        SYS_CLK     => CLK_75M		,
        XA          => XA			,
        XZCS_7      => XZCS_7		,
        XRD         => XRD,
        RDEN_A      => RDEN_A		,
        WREN_A      => WREN_A		,
		ADDRESS_A   => ADDRESS_A	,
		ADDRESS_CH  => CHANNEL		,		
		VALID_FLAG  => AD_DATA_FLAG	
	);

U3 : DSPWR_FPGARE_CTRL PORT MAP 
	(
        SYS_CLK     => CLK_75M		,
        XA          => XA			,
        XZCS_7      => XZCS_7		,
        XWE         => XWE			,
        RDEN_B      => RDEN_B		,
        WREN_B      => WREN_B		,
		ADDRESS_B   => ADDRESS_B	
	);

U4 : RAM_2_PORT PORT MAP 
	(
		address_a	=> ADDRESS_A	,
		address_b	=> ADDRESS_B	,
		clock	    => CLK_75M		,
		data_a	    => RAMA_IN		,
		data_b	    => DATA_B		,
		rden_a	    => RDEN_A		,
		rden_b	    => RDEN_B		,
		wren_a	    => WREN_A		,
		wren_b	    => WREN_B		,
		q_a	        => Q_A			,
		q_b	        => RAMB_OUT
	);

U5 : AD7606_DRIVER PORT MAP 
	( 
		CLK      	=> CLK_75M 		,
		BUSY     	=> BUSY 		,
		FIRSTDATA	=> FIRSTDATA 	,
		INDATA   	=> INDATA		,
		OUTDATA  	=> RAMA_IN 		,
		ARESS       => CHANNEL 		,
		RESTOUT  	=> RESTOUT  	,
		CONVENT4 	=> CONVENT4 	,
		CS       	=> CS			,
		CH_EN    	=> AD_DATA_FLAG	,
		RD       	=> RD 
	);

END A;