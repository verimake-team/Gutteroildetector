


module  mult_8x8_Cc(

    input   [7:0]   A     ,
    input   [7:0]   B     ,
    
    
    output  [15:0]  PROD
);


wire [7:0] prod1,prod2,prod3,prod4;
wire [7:0] sum;

approx_4 approx_40(

    .a       (A[3:0]   ) ,
    .b       (B[3:0]   ) ,

    .prod    (prod1    ) 
);



approx_4 approx_41(

    .a       (A[7:4]   ) ,
    .b       (B[3:0]   ) ,

    .prod    (prod2    ) 
);



approx_4 approx_42(

    .a       (A[3:0]   ) ,
    .b       (B[7:4]   ) ,

    .prod    (prod3    ) 
);


approx_4 approx_43(

    .a       (A[7:4]   ) ,
    .b       (B[7:4]   ) ,

    .prod    (prod4    ) 
);




////////////////////////////////////////////////



lut_4
#(.INIT(16'h9600))
inst_lut_4_0(
    .a (prod1[4]     )  ,
    .b (prod2[0]     )  ,
    .c (prod3[0]     )  ,
    .d (1'b1         )  ,

    .o (sum[0]       )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_1(
    .a (prod1[5]     )  ,
    .b (prod2[1]     )  ,
    .c (prod3[1]     )  ,
    .d (1'b1         )  ,

    .o (sum[1]       )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_2(
    .a (prod1[6]     )  ,
    .b (prod2[2]     )  ,
    .c (prod3[2]     )  ,
    .d (1'b1         )  ,

    .o (sum[2]       )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_3(
    .a (prod1[7]     )  ,
    .b (prod2[3]     )  ,
    .c (prod3[3]     )  ,
    .d (1'b1         )  ,

    .o (sum[3]       )

);


///////////////////////////////////////////////

lut_4
#(.INIT(16'h9600))
inst_lut_4_4(
    .a (prod2[4]     )  ,
    .b (prod3[4]     )  ,
    .c (prod4[0]     )  ,
    .d (1'b1         )  ,

    .o (sum[4]       )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_5(
    .a (prod2[5]     )  ,
    .b (prod3[5]     )  ,
    .c (prod4[1]     )  ,
    .d (1'b1         )  ,

    .o (sum[5]       )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_6(
    .a (prod2[6]     )  ,
    .b (prod3[6]     )  ,
    .c (prod4[2]     )  ,
    .d (1'b1         )  ,

    .o (sum[6]       )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_7(
    .a (prod2[7]     )  ,
    .b (prod3[7]     )  ,
    .c (prod4[3]     )  ,
    .d (1'b1         )  ,

    .o (sum[7]       )

);



////////////////////////////////////////////////////

assign  PROD[3:0]=prod1[3:0];
assign  PROD[11:4]=sum[7:0];
assign  PROD[15:12]=prod4[7:4];




endmodule