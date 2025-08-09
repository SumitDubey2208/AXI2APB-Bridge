//
// File: default_reset_gen.sv
//
// Generated from Mentor VIP Configurator (20191218)
// Generated using Mentor VIP Library ( 2019.4_4 : 10/19/2020:11:53 )
//
module default_reset_gen
(
    output reg  RESET,
    input  reg  CLK_IN
);
    
    initial
    begin
        RESET = 1;
        
        RESET = ~RESET;
        
        repeat ( 2 )
        begin
            @(posedge CLK_IN);
        end
        
        RESET = ~RESET;
    end
    

endmodule: default_reset_gen
