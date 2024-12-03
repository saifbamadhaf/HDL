library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TrafficLight is
    Port (
        Clock, Reset : in STD_LOGIC;                    
        pedestrian_button : in STD_LOGIC;
        CarGreen : out STD_LOGIC;      
        CarOrange : out STD_LOGIC;     
        CarRed : out STD_LOGIC;        
        PedestrianGreen : out STD_LOGIC;
        PedestrianRed : out STD_LOGIC  
    );
end TrafficLight;

architecture Behavioral of TrafficLight is
    type state_type is (CarGreenState, CarOrangeToGreenState, CarOrangeToRedState, CarRedState, PedestrianGreenState, PedestrianRedState);
    signal CurrentState, NextState : state_type;
begin

    Transition: process(Clock, Reset)
    begin
        if reset = '1' then                
            CurrentState <= CarGreenState;
        elsif rising_edge(Clock) then
            CurrentState <= NextState;   
        end if;
    end process Transition;
	 
	 

  
    TrafficLightOutput: process(CurrentState, pedestrian_button)
    begin
        case CurrentState is
            when CarGreenState =>
                CarGreen <= '1';
                CarOrange <= '0';
                CarRed <= '0';
                PedestrianGreen <= '0';
                PedestrianRed <= '1';

                if pedestrian_button = '1' then  
                    NextState <= CarOrangeToRedState; 
                else
                    NextState <= CarGreenState;  
                end if;

            when CarOrangeToRedState =>
                CarGreen <= '0';
                CarOrange <= '1';
                CarRed <= '0';
                PedestrianGreen <= '0';
                PedestrianRed <= '1';
                NextState <= CarRedState;  
					
					 when CarOrangeToGreenState =>
                CarGreen <= '0';
                CarOrange <= '1';
                CarRed <= '0';
                PedestrianGreen <= '0';
                PedestrianRed <= '1';
                NextState <= CarGreenState; 

            when CarRedState =>
                CarGreen <= '0';
                CarOrange <= '0';
                CarRed <= '1';
                PedestrianGreen <= '1';
                PedestrianRed <= '0';

                if pedestrian_button = '1' then  
                    NextState <= PedestrianGreenState;
                else
                    NextState <= CarOrangeToGreenState;        
                end if;

            when PedestrianGreenState =>
                CarGreen <= '0';
                CarOrange <= '0';
                CarRed <= '1';
                PedestrianGreen <= '1';
                PedestrianRed <= '0';

                if pedestrian_button = '0' then  
                    NextState <= PedestrianRedState; 
                else
                    NextState <= PedestrianGreenState;
                end if;

            when PedestrianRedState =>
                CarGreen <= '1';
                CarOrange <= '0';
                CarRed <= '0';
                PedestrianGreen <= '0';
                PedestrianRed <= '1';

                if pedestrian_button = '1' then 
                    NextState <= PedestrianGreenState; 
                else
                    NextState <= CarGreenState;      
                end if;

            when others =>
                NextState <= CarGreenState;
        end case;
    end process TrafficLightOutput;

end Behavioral;
