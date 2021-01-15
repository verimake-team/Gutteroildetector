
module lut_6
#(parameter INIT6=64'h0000_0000_0000_0000)
(
    input     I0    ,
    input     I1    ,
    input     I2    ,
    input     I3    ,
    input     I4    ,
    input     I5    ,
    
    output    O5    ,
    output    O6  
);


wire o0,o1,o2,o3,mux0;

 
assign O5=(I4==1'b1)?o1:o0;
assign O6_r=(I4==1'b1)?o3:o2;
assign O6=(I5==1'b1)?O6_r:O5;





lut_4
#(.INIT(INIT6[15:0]))
inst_lut_4_0(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o0)
);


lut_4
#(.INIT(INIT6[31:16]))
inst_lut_4_1(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o1)
);


lut_4
#(.INIT(INIT6[47:32]))
inst_lut_4_2(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o2)
);


lut_4
#(.INIT(INIT6[63:48]))
inst_lut_4_3(
    .a (I0)  ,
    .b (I1)  ,
    .c (I2)  ,
    .d (I3)  ,

    .o (o3)
);

/* 
lut_4
#(.INIT(16'hca00))
inst_lut_4_4(
    .a (o0  )  ,
    .b (o1  )  ,
    .c (I4  )  ,
    .d (1'b1)  ,

    .o (O5  )
);

lut_4
#(.INIT(16'hca00))
inst_lut_4_5(
    .a (o2  )  ,
    .b (o3  )  ,
    .c (I4  )  ,
    .d (1'b1)  ,

    .o (mux0)
);


lut_4
#(.INIT(16'hca00))
inst_lut_4_6(
    .a (O5    )  ,
    .b (mux0  )  ,
    .c (I5    )  ,
    .d (1'b1  )  ,

    .o (O6)
); */

endmodule

