LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY PARACOMM_tb IS 
END PARACOMM_tb;

ARCHITECTURE TESTBENCH_ARCH OF PARACOMM_tb IS

COMPONENT PARA_COMM
PORT (
--------------------------FPGA-ADC&DAC----------------------------------
        CLK_30M     : IN    STD_LOGIC;
--		SYS_RST_N   : IN    STD_LOGIC;
		DATA_IN     : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
		DATA_OUT    : OUT   STD_LOGIC_VECTOR(15 DOWNTO 0);

----------------------------ADC_WR----------------------------------------
--        ADC_WR      : IN    STD_LOGIC;
----------------------------DAC_RD----------------------------------------
--        DAC_RD      : IN    STD_LOGIC;
--------------------------FPGA-DSP--------------------------------------
        XZCS_7      : IN    STD_LOGIC;
        XRD         : IN    STD_LOGIC;
        XWE         : IN    STD_LOGIC;

		RAMA_FULL   : OUT   STD_LOGIC;
	    RAMB_FULL   : IN    STD_LOGIC;

		XA          : IN    STD_LOGIC_VECTOR(11 DOWNTO 0);
		XD          : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END COMPONENT;

SIGNAL SYS_CLK      : STD_LOGIC;
SIGNAL CLK_30M      : STD_LOGIC;
--SIGNAL SYS_RST_N    : STD_LOGIC;
SIGNAL DATA_IN      : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DATA_OUT     : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
SIGNAL XZCS_7       : STD_LOGIC := '0';
SIGNAL XRD          : STD_LOGIC := '1';
SIGNAL XWE          : STD_LOGIC := '1';
SIGNAL RAMA_FULL    : STD_LOGIC := '0';
SIGNAL RAMB_FULL    : STD_LOGIC := '0';
SIGNAL XA           : STD_LOGIC_VECTOR(11 DOWNTO 0) := "100000000000";
SIGNAL XD           : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";

--SIGNAL COUNTER_A    : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";
--SIGNAL COUNTER_A_REG1    : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";
--SIGNAL XA_WE        : STD_LOGIC_VECTOR(11 DOWNTO 0) := "100000000000";
--SIGNAL XA_RD        : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";
--SIGNAL XA_DELAY     : STD_LOGIC_VECTOR(11 DOWNTO 0) := "100000000000";
SIGNAL DSP_DATA     : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000011110000000";
--SIGNAL DATA_IN_REG1 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
--SIGNAL DATA_IN_REG2 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";

CONSTANT CLK_PERIOD : TIME := 33 NS;

BEGIN

INSTANT: PARA_COMM PORT MAP
	(
        CLK_30M     => CLK_30M   ,
--        SYS_RST_N   => SYS_RST_N ,
		DATA_IN     => DATA_IN   ,
		DATA_OUT    => DATA_OUT  ,
		XZCS_7		=> XZCS_7    ,
		XRD			=> XRD       ,
        XWE			=> XWE       ,
        RAMA_FULL	=> RAMA_FULL ,
        RAMB_FULL	=> RAMB_FULL ,
        XA			=> XA        ,
		XD			=> XD
	);

CLK_IN: PROCESS
BEGIN
    CLK_30M <= '0';
	WAIT FOR CLK_PERIOD*5/2;
    CLK_30M <= '1';
	WAIT FOR CLK_PERIOD*5/2;
END PROCESS;

PROCESS
BEGIN
    SYS_CLK <= '0';
	WAIT FOR CLK_PERIOD/2;
    SYS_CLK <= '1';
	WAIT FOR CLK_PERIOD/2;
END PROCESS;

--RESET_IN: PROCESS
--BEGIN
--    SYS_RST_N <= '0';
--	WAIT FOR 500 NS;
--    SYS_RST_N <= '1';
--	WAIT FOR 999999999 NS;
--END PROCESS;

PROCESS
BEGIN
    XZCS_7 <= '1';
    XRD    <= '1';
	WAIT FOR 200 NS;
    XZCS_7 <= '0';
    XRD    <= '0';
	WAIT FOR 200 NS;
END PROCESS;

PROCESS(XRD)
BEGIN
	IF(XRD'EVENT AND XRD = '0') THEN
        IF(XA="011111111111") THEN
            XA <= "000000000000";
        ELSE
            XA <= XA + '1';
        END IF;
	END IF;
END PROCESS;


--PROCESS(XWE)
--BEGIN
--	IF(XWE'EVENT AND XWE = '0') THEN
--        IF(XA="111111111111") THEN
--            XA <= "100000000000";
--        ELSE
--            XA <= XA + '1';
--        END IF;
--	END IF;
--END PROCESS;


--XD <= DSP_DATA; 


-------The following code is the first ersion------Until 2022.5.4--------------------- 
---------------XWE Adress------------------------------------
--PROCESS(XWE)
--BEGIN
--    IF(XWE'EVENT AND XWE='0') THEN
--    	IF(XA_WE="111111111111") THEN
--            XA_WE <= "100000000000";
--    	ELSE
--            XA_WE <= XA_WE + '1';
--        END IF;
--    END IF;
--END PROCESS;

-------------XRD Adress------------------------------------
--PROCESS(SYS_CLK)
--BEGIN
----    IF(SYS_RST_N='0') THEN 
----        XA_RD <= "000000000000";
--    IF(XRD'EVENT AND XRD='0') THEN
--    	    IF(XA_RD="011111111111") THEN
--                XA_RD <= "000000000000";
--    	    ELSE
--                XA_RD <= XA_RD + '1';
--            END IF;
--    	END IF;
----    END IF;
--END PROCESS;

---------------Adress------------------------------------
--PROCESS(XRD,XWE)
--BEGIN
--    IF((XZCS_7='0')AND(XRD='0')) THEN
--		XA <= XA_RD;
--	ELSIF((XZCS_7='0')AND(XWE='0')) THEN
--		XA <= XA_WE;
--	ELSE
--		XA <= XA;
--	END IF;
--END PROCESS;


END TESTBENCH_ARCH;
