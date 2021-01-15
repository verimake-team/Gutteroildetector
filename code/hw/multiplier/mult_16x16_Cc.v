


module mult_16x16_Cc(

    input     [15:0]    a   ,
    input     [15:0]    b   ,

    output    [31:0]    prod 

);

wire [15:0]  prod_sig [3:0];
wire [15:0]  sum;

///////////////////////////////////////




 mult_8x8_Cc mult_8x8_Cc0( 

    .A    (a[7:0]     ) ,
    .B    (b[7:0]     ) ,

    .PROD (prod_sig[0])
);

 mult_8x8_Cc mult_8x8_Cc1( 

    .A    (a[7:0]      ) ,
    .B    (b[15:8]     ) ,

    .PROD (prod_sig[1] )
);

 mult_8x8_Cc mult_8x8_Cc2( 

    .A    (a[15:8]     ) ,
    .B    (b[7:0]      ) ,

    .PROD (prod_sig[2] )
);


 mult_8x8_Cc mult_8x8_Cc3( 

    .A    (a[15:8]     ) ,
    .B    (b[15:8]     ) ,

    .PROD (prod_sig[3] )
);


/////////////////////////////////////////////////////

lut_4
#(.INIT(16'h9600))
inst_lut_4_0(
    .a (prod_sig[0][8]     )  ,
    .b (prod_sig[1][0]     )  ,
    .c (prod_sig[2][0]     )  ,
    .d (1'b1               )  ,

    .o (sum[0]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_1(
    .a (prod_sig[0][9]     )  ,
    .b (prod_sig[1][1]     )  ,
    .c (prod_sig[2][1]     )  ,
    .d (1'b1               )  ,

    .o (sum[1]             )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_2(
    .a (prod_sig[0][10]     )  ,
    .b (prod_sig[1][2]      )  ,
    .c (prod_sig[2][2]      )  ,
    .d (1'b1               )  ,

    .o (sum[2]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_3(
    .a (prod_sig[0][11]     )  ,
    .b (prod_sig[1][3]      )  ,
    .c (prod_sig[2][3]      )  ,
    .d (1'b1               )  ,

    .o (sum[3]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_4(
    .a (prod_sig[0][12]      )  ,
    .b (prod_sig[1][4]       )  ,
    .c (prod_sig[2][4]       )  ,
    .d (1'b1               )  ,

    .o (sum[4]             )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_5(
    .a (prod_sig[0][13]       )  ,
    .b (prod_sig[1][5]        )  ,
    .c (prod_sig[2][5]        )  ,
    .d (1'b1                  )  ,

    .o (sum[5]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_6(
    .a (prod_sig[0][14]      )  ,
    .b (prod_sig[1][6]       )  ,
    .c (prod_sig[2][6]       )  ,
    .d (1'b1                  )  ,

    .o (sum[6]             )

);



lut_4
#(.INIT(16'h9600))
inst_lut_4_7(
    .a (prod_sig[0][15]      )  ,
    .b (prod_sig[1][7]       )  ,
    .c (prod_sig[2][7]       )  ,
    .d (1'b1                  )  ,

    .o (sum[7]             )

);


//////////////////////////////////////////////



/////////////////////////////////////////////////////


lut_4
#(.INIT(16'h9600))
inst_lut_4_8(
    .a (prod_sig[1][8]      )  ,
    .b (prod_sig[2][8]      )  ,
    .c (prod_sig[3][0]      )  ,
    .d (1'b1                  )  ,

    .o (sum[8]             )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_9(
    .a (prod_sig[1][9]       )  ,
    .b (prod_sig[2][9]       )  ,
    .c (prod_sig[3][1]       )  ,
    .d (1'b1                  )  ,

    .o (sum[9]             )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_10(
    .a (prod_sig[1][10]        )  ,
    .b (prod_sig[2][10]        )  ,
    .c (prod_sig[3][2]         )  ,
    .d (1'b1                  )  ,

    .o (sum[10]             )

);

lut_4
#(.INIT(16'h9600))
inst_lut_4_11(
    .a (prod_sig[1][11]         )  ,
    .b (prod_sig[2][11]         )  ,
    .c (prod_sig[3][3]          )  ,
    .d (1'b1                    )  ,

    .o (sum[11]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_12(
    .a (prod_sig[1][12]         )  ,
    .b (prod_sig[2][12]         )  ,
    .c (prod_sig[3][4]          )  ,
    .d (1'b1                    )  ,

    .o (sum[12]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_13(
    .a (prod_sig[1][13]         )  ,
    .b (prod_sig[2][13]         )  ,
    .c (prod_sig[3][5]          )  ,
    .d (1'b1                    )  ,

    .o (sum[13]             )

);


lut_4
#(.INIT(16'h9600))
inst_lut_4_14(
    .a (prod_sig[1][14]         )  ,
    .b (prod_sig[2][14]         )  ,
    .c (prod_sig[3][6]          )  ,
    .d (1'b1                    )  ,

    .o (sum[14]             )

);



lut_4
#(.INIT(16'h9600))
inst_lut_4_15(
    .a (prod_sig[1][15]         )  ,
    .b (prod_sig[2][15]         )  ,
    .c (prod_sig[3][7]          )  ,
    .d (1'b1                    )  ,

    .o (sum[15]             )

);



//////////////////////////////////////////////

assign  prod[7:0]=prod_sig[0][7:0];
assign  prod[23:8]=sum[15:0];
assign  prod[31:24]=prod_sig[3][15:8];



endmodule 