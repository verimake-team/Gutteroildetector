


module  mult_8x8_Ca(

    input   [7:0]   A     ,
    input   [7:0]   B     ,
    
    output  [15:0]  PROD
);


wire [7:0] prod1,prod2,prod3,prod4;
wire [7:0] sum;

acc_4 acc_40(

    .a       (A[3:0]   ) ,
    .b       (B[3:0]   ) ,

    .prod    (prod1    ) 
);



acc_4 acc_41(

    .a       (A[7:4]   ) ,
    .b       (B[3:0]   ) ,

    .prod    (prod2    ) 
);



acc_4 acc_42(

    .a       (A[3:0]   ) ,
    .b       (B[7:4]   ) ,

    .prod    (prod3    ) 
);
 

acc_4 acc_43(

    .a       (A[7:4]   ) ,
    .b       (B[7:4]   ) ,

    .prod    (prod4    ) 
);

 
 // mult_approx mult_approx0(

    // .a       (A[3:0]   ) ,
    // .b       (B[3:0]   ) ,

    // .prod    (prod1    ) 
// );



// mult_approx mult_approx1(

    // .a       (A[7:4]   ) ,
    // .b       (B[3:0]   ) ,

    // .prod    (prod2    ) 
// );



// mult_approx mult_approx2(

    // .a       (A[3:0]   ) ,
    // .b       (B[7:4]   ) ,

    // .prod    (prod3    ) 
// );


// mult_approx mult_approx3(

    // .a       (A[7:4]   ) ,
    // .b       (B[7:4]   ) ,

    // .prod    (prod4    ) 
// );



////////////////////////////////////////////////
/*  adder adder(
    .prod1(prod1),
    .prod2(prod2),
    .prod3(prod3),   
    .prod4(prod4),

    .PROD (PROD ) 
); */
 
////////////////////////////////////////////////////

////////////////////////////////////////////////

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_00(
    .I0 (prod1[4]       )  ,
    .I1 (prod2[0]       )  ,
    .I2 (prod3[0]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[0]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_10(
    .I0 (prod1[5]       )  ,
    .I1 (prod2[1]       )  ,
    .I2 (prod3[1]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[1]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_20(
    .I0 (prod1[6]       )  ,
    .I1 (prod2[2]       )  ,
    .I2 (prod3[2]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[2]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_30(
    .I0 (prod1[7]       )  ,
    .I1 (prod2[3]       )  ,
    .I2 (prod3[3]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[3]         )
);

///////////////////////////////////////////////

lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_40(
    .I0 (prod2[4]       )  ,
    .I1 (prod3[4]       )  ,
    .I2 (prod4[0]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[4]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_50(
    .I0 (prod2[5]       )  ,
    .I1 (prod3[5]       )  ,
    .I2 (prod4[1]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[5]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_60(
    .I0 (prod2[6]       )  ,
    .I1 (prod3[6]       )  ,
    .I2 (prod4[2]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[6]         )
);



lut_6
#(.INIT6(64'h9696_9696_9696_9696))
inst_lut_6_70(
    .I0 (prod2[7]       )  ,
    .I1 (prod3[7]       )  ,
    .I2 (prod4[3]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O6 (sum[7]         )
);


////////////////////////////////////////////////////

assign  PROD[3:0]=prod1[3:0];
assign  PROD[11:4]=sum[7:0];
assign  PROD[15:12]=prod4[7:4];



endmodule