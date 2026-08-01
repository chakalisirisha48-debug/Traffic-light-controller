module traffic_light_controller(
    input clk,
    input rst,
    output reg [2:0] light
);

// Light Encoding
// 100 = Red
// 010 = Yellow
// 001 = Green

parameter RED    = 2'b00;
parameter GREEN  = 2'b01;
parameter YELLOW = 2'b10;

reg [1:0] state;
reg [3:0] count;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        state <= RED;
        count <= 0;
    end
    else
    begin
        case(state)

            RED:
            begin
                if(count < 4)
                    count <= count + 1;
                else
                begin
                    count <= 0;
                    state <= GREEN;
                end
            end

            GREEN:
            begin
                if(count < 4)
                    count <= count + 1;
                else
                begin
                    count <= 0;
                    state <= YELLOW;
                end
            end

            YELLOW:
            begin
                if(count < 2)
                    count <= count + 1;
                else
                begin
                    count <= 0;
                    state <= RED;
                end
            end

        endcase
    end
end

always @(*)
begin
    case(state)
        RED:    light = 3'b100;
        GREEN:  light = 3'b001;
        YELLOW: light = 3'b010;
        default: light = 3'b100;
    endcase
end

endmodule