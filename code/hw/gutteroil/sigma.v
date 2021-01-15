module sigma(
    input               clk             ,
    input               rst_n           ,
    
    input       [15:0]  ds_result0      ,
    input       [15:0]  ds_result1      ,
    input       [15:0]  ds_result2      ,
    input       [15:0]  ds_result3      ,

    output reg  [17:0]  sigma_result
);


always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        sigma_result <= 17'd0;
    end
    else begin
       sigma_result <= ds_result0 + ds_result1 +
                       ds_result2 + ds_result3 ;
    end

end

endmodule
