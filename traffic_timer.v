`timescale 1ns / 1ps

module traffic_timer(
input clk, reset, day,
output reg red, yellow, green
);
//Start with a FSM
//Define a internal state variable. This holds the states for the lights
reg [1:0] state;
reg [3:0] counter;

//state parameters
parameter period=10;
parameter blink_period=5;
parameter RED = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN = 2'b10;
parameter IDLE = 2'b11;

//Defining the state transitions
always @(posedge clk or posedge reset) 
begin
    if (reset) begin
        state <= IDLE;
        counter <=0;
    end 
    else if (day) begin
        counter <= counter+1;
        if (counter == period-1) begin
            case (state)
                IDLE: state <= RED;
                RED: state <= GREEN;
                GREEN: state <= YELLOW;
                YELLOW: state <= RED;
                default: state <= IDLE;
            endcase
        end
    end else if (!day) begin
        counter <= counter + 1;
        if (counter == blink_period - 1) begin
            yellow <= ~yellow;
            counter <= 0;
        end        
    end  
end
//Output Logic
always @* 
begin
    case (state)
        RED: begin red <= 1'b1; green <= 1'b0; yellow <= 1'b0; end
        GREEN: begin red <= 1'b0; green <= 1'b1; yellow <= 1'b0; end
        YELLOW: begin red <= 1'b0; green <= 1'b0; yellow <= 1'b1; end
        default: begin red <= 1'b0; green <= 1'b0; yellow <= 1'b0; end
    endcase
end
endmodule
