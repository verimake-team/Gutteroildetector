
module lut_5
#(parameter INIT5=32'h0000_0000)
(
    input     I0    ,
    input     I1    ,
    input     I2    ,
    input     I3    ,
    input     I4    ,
    
    output    O5    
);


wire o0,o1;


/*  assign O5=(I4==1'b1)?o1:o0;  */



lut_4
#(.INIT(INIT5[15:0]))
inst_lut_4_0(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o0)
);


lut_4
#(.INIT(INIT5[31:16]))
inst_lut_4_1(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o1)
);


 lut_4
#(.INIT(16'hca00))
inst_lut_4_2(
    .a (o0)  ,
    .b (o1)  ,
    .c (I4)  ,
    .d (1'b1)  ,

    .o (O5)
);


endmodule

