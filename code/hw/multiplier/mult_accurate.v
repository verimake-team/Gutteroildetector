
module acc_4(

    input     [3:0]    a        ,
    input     [3:0]    b        ,
    
    output    [7:0]    prod     

);



wire [5:0] pp0, pp1;
wire [7:0] gen,prop,carries1,output0;
wire pp00,pp01;


lut_4
#(.INIT(16'h6ac0))
inst_lut_4_0(
    .a (a[0]         )  ,
    .b (a[1]         )  ,
    .c (b[0]         )  ,
    .d (b[1]         )  ,

    .o (pp0[1]       )

);



lut_5
#(.INIT5(32'hb4cc_f000))
inst_lut_5_0(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (b[0]         )  ,
    .I4 (b[1]         )  ,
     
    .O5 (pp0[2]       )
);



lut_6
#(.INIT6(64'hc738_f0f0_ff00_0000))
inst_lut_6_0(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[0]         )  ,
    .I5 (b[1]         )  ,
    
    .O6 (pp0[3]       )

);


lut_6
#(.INIT6(64'h07c0_ff00_0000_0000))
inst_lut_6_1(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[0]         )  ,
    .I5 (b[1]         )  ,
    
    .O6 (pp0[4]       )

);



lut_6
#(.INIT6(64'hf800_0000_0000_0000))
inst_lut_6_2(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[0]         )  ,
    .I5 (b[1]         )  ,
    
    .O6 (pp0[5]       )

); 



lut_4
#(.INIT(16'h6ac0))
inst_lut_4_1(
    .a (a[0]         )  ,
    .b (a[1]         )  ,
    .c (b[2]         )  ,
    .d (b[3]         )  ,

    .o (pp1[1]       )

);


lut_5
#(.INIT5(32'hb4cc_f000))
inst_lut_5_1(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (b[2]         )  ,
    .I4 (b[3]         )  ,
     
    .O5 (pp1[2]       )
); 


 lut_6
#(.INIT6(64'hc738_f0f0_ff00_0000))
inst_lut_6_3(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[2]         )  ,
    .I5 (b[3]         )  ,
    
    .O6 (pp1[3]       )

);


lut_6
#(.INIT6(64'h07c0_ff00_0000_0000))
inst_lut_6_4(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[2]         )  ,
    .I5 (b[3]         )  ,
    
    .O6 (pp1[4]       )

);



lut_6
#(.INIT6(64'hf800_0000_0000_0000))
inst_lut_6_5(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[2]         )  ,
    .I5 (b[3]         )  ,
    
    .O6 (pp1[5]       )

);




lut_4
#(.INIT(16'h8000))
inst_lut_4_2(
    .a (pp0[2]         )  ,
    .b (pp1[0]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[0]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_3(
    .a (pp0[2]         )  ,
    .b (pp1[0]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[0]        )
);



lut_4
#(.INIT(16'h8000))
inst_lut_4_4(
    .a (pp0[3]         )  ,
    .b (pp1[1]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[1]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_5(
    .a (pp0[3]         )  ,
    .b (pp1[1]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[1]        )
);

 

lut_4
#(.INIT(16'h8000))
inst_lut_4_6(
    .a (pp0[4]         )  ,
    .b (pp1[2]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[2]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_7(
    .a (pp0[4]         )  ,
    .b (pp1[2]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[2]        )
);


lut_4
#(.INIT(16'h8000))
inst_lut_4_8(
    .a (pp0[5]         )  ,
    .b (pp1[3]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[3]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_9(
    .a (pp0[5]         )  ,
    .b (pp1[3]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[3]        )
);


lut_4
#(.INIT(16'h8000))
inst_lut_4_10(
    .a (a[0]           )  ,
    .b (b[0]           )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,
 
    .o (pp0[0]         )
);

lut_4
#(.INIT(16'h8000))
inst_lut_4_11(
    .a (a[0]           )  ,
    .b (b[2]           )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,
 
    .o (pp1[0]         )
);


/* lut_6
#(.INIT6(64'ha0a0a0a088888888))
inst_lut_6_4(
    .I0 (a[0]         )  ,
    .I1 (b[0]         )  ,
    .I2 (b[2]         )  ,
    .I3 (1'b1         )  ,
    .I4 (1'b1         )  ,
    .I5 (1'b1         )  ,
    
    .O5(pp0[0]        )  ,
    .O6(pp1[0]        )  

); */

/* assign pp0[0]= 1'b0;
assign pp1[0]= 1'b0;
 */

assign prod[7:2]=output0[5:0];
assign prod[1]=pp0[1];
assign prod[0]=pp0[0];
assign gen[7:4]= 4'd0; 
assign prop[4]= pp1[4];
assign prop[5]= pp1[5];
assign prop[6]= 1'b0;
assign prop[7]= 1'b0;



carry_4 carry_inst0(
    .S      (prop[3:0]       ),
    .DI     (gen[3:0]        ),
    .CI     (1'b0            ),

    .CO     (carries1[3:0]   ),
    .O      (output0[3:0]    )
);


carry_4 carry_inst1(
    .S      (prop[7:4]       ),
    .DI     (gen[7:4]        ),
    .CI     (carries1[3]     ),

    .CO     (carries1[7:4]   ),
    .O      (output0[7:4]    )
);




endmodule 