module ds(
    input                   clk         ,     
    input                   rst_n       ,
    input       [ 7:0]   feature     ,
    input       [ 7:0]   train_data  ,

    output reg [15:0]   ds_result
);



wire  [15:0]   ds_result_r;



always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin   
        ds_result <= 16'd0;
    end
    else begin
        ds_result <= ds_result_r;
    end
end


mult_8x8_Cc mult_8x8_Cc0(

    .A   (train_data - feature),
    .B   (train_data - feature),

    .PROD(ds_result_r)
);

endmodule