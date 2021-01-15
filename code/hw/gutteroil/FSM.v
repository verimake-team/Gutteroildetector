module FSM(
    input                   clk         ,     
    input                   rst_n       ,
    output   reg [9:0]      address
);

always@(posedge clk or negedge rst_n)begin     
    if(!rst_n) begin
        address <= 10'd0;
    end
    else begin
        if(address == 10'd600)begin
            address <= 10'd0;
        end
        else begin
            address <= address + 1'b1;
        end
    end
end

endmodule