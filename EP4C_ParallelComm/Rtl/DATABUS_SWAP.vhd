LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

--双向数据总线控制模块
ENTITY DATABUS_SWAP IS
PORT(
        XRD         : IN     STD_LOGIC;						--DSP读使能
        XWE         : IN     STD_LOGIC; 					--DSP写使能
		XD          : INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0); --16位双向总线
		Q_A         : IN     STD_LOGIC_VECTOR(15 DOWNTO 0); --RAM_A输出，用于DSP读数据
		DATA_B      : OUT    STD_LOGIC_VECTOR(15 DOWNTO 0)  --RAM_B输入，用于DSP写数据
);
END DATABUS_SWAP;

ARCHITECTURE A OF DATABUS_SWAP IS

BEGIN

XD     <= Q_A WHEN ((XRD='0')AND(XWE='1')) ELSE (OTHERS => 'Z');--DSP读使能时，XD为输出状态
DATA_B <= XD  WHEN ((XRD='1')AND(XWE='0')) ELSE (OTHERS => 'Z');--DSP写使能时，XD为输入状态
																--其余时段XD为高阻态
END A;