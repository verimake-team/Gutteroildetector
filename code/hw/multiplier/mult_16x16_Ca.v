


module mult_16x16_Ca(

    input     [15:0]    a   ,
    input     [15:0]    b   ,

    output    [31:0]    prod 

);

wire [15:0]  prod_sig [3:0];
wire [15:0]  sum;

///////////////////////////////////////

 mult_8x8_Ca mult_8x8_Ca0( 

    .A    (a[7:0]     ) ,
    .B    (b[7:0]     ) ,

    .PROD (prod_sig[0])
);

 mult_8x8_Ca mult_8x8_Ca1( 

    .A    (a[7:0]      ) ,
    .B    (b[15:8]     ) ,

    .PROD (prod_sig[1] )
);

 mult_8x8_Ca mult_8x8_Ca2( 

    .A    (a[15:8]     ) ,
    .B    (b[7:0]      ) ,

    .PROD (prod_sig[2] )
);


 mult_8x8_Ca mult_8x8_Ca3( 

    .A    (a[15:8]     ) ,
    .B    (b[15:8]     ) ,

    .PROD (prod_sig[3] )
);

/* assign prod={prod_sig[3][15:8],prod_sig[2][7:0],prod_sig[1][15:8],prod_sig[0][7:0]}; */

/////////////////////////////////////////////////////

 adder_16 adder_16(
    .prod1(prod_sig[0]),
    .prod2(prod_sig[1]),
    .prod3(prod_sig[2]),   
    .prod4(prod_sig[3]),

    .PROD (prod       ) 
);

/* lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_000(
    .I0 (prod_sig[0][8]       )  ,
    .I1 (prod_sig[1][0]       )  ,
    .I2 (prod_sig[2][0]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[0]               )

);

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_100(
    .I0 (prod_sig[0][9]       )  ,
    .I1 (prod_sig[1][1]       )  ,
    .I2 (prod_sig[2][1]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[1]               )

);

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_200(
    .I0 (prod_sig[0][10]       )  ,
    .I1 (prod_sig[1][2]       )  ,
    .I2 (prod_sig[2][2]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[2]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_300(
    .I0 (prod_sig[0][11]       )  ,
    .I1 (prod_sig[1][3]       )  ,
    .I2 (prod_sig[2][3]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[3]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_400(
    .I0 (prod_sig[0][12]       )  ,
    .I1 (prod_sig[1][4]       )  ,
    .I2 (prod_sig[2][4]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[4]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_500(
    .I0 (prod_sig[0][13]       )  ,
    .I1 (prod_sig[1][5]       )  ,
    .I2 (prod_sig[2][5]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[5]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_600(
    .I0 (prod_sig[0][14]       )  ,
    .I1 (prod_sig[1][6]       )  ,
    .I2 (prod_sig[2][6]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[6]               )

);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_700(
    .I0 (prod_sig[0][15]       )  ,
    .I1 (prod_sig[1][7]       )  ,
    .I2 (prod_sig[2][7]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[7]               )

);
//////////////////////////////////////////////



/////////////////////////////////////////////////////



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_001(
    .I0 (prod_sig[1][8]       )  ,
    .I1 (prod_sig[2][8]       )  ,
    .I2 (prod_sig[3][0]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[8]               )

);

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_101(
    .I0 (prod_sig[1][9]       )  ,
    .I1 (prod_sig[2][9]       )  ,
    .I2 (prod_sig[3][1]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[9]               )

);

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_201(
    .I0 (prod_sig[1][10]       )  ,
    .I1 (prod_sig[2][10]       )  ,
    .I2 (prod_sig[3][2]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[10]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_301(
    .I0 (prod_sig[1][11]       )  ,
    .I1 (prod_sig[2][11]       )  ,
    .I2 (prod_sig[3][3]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[11]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_401(
    .I0 (prod_sig[1][12]       )  ,
    .I1 (prod_sig[2][12]       )  ,
    .I2 (prod_sig[3][4]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[12]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_501(
    .I0 (prod_sig[1][13]       )  ,
    .I1 (prod_sig[2][13]       )  ,
    .I2 (prod_sig[3][5]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[13]               )

);


lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_601(
    .I0 (prod_sig[1][14]       )  ,
    .I1 (prod_sig[2][14]       )  ,
    .I2 (prod_sig[3][6]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[14]               )

);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_701(
    .I0 (prod_sig[1][15]       )  ,
    .I1 (prod_sig[2][15]       )  ,
    .I2 (prod_sig[3][7]       )  ,
    .I3 (1'b1                 )  ,
    .I4 (1'b1                 )  ,
    .I5 (1'b1                 )  ,
 
    .O6 (sum[15]               )

);
//////////////////////////////////////////////

assign  prod[7:0]=prod_sig[0][7:0];
assign  prod[23:8]=sum[15:0];
assign  prod[31:24]=prod_sig[3][15:8]; */



endmodule 