


module approx_4(

    input     [3:0]    a        ,
    input     [3:0]    b        ,
    
    output    [7:0]    prod     

);



wire [5:0] pp0, pp1;
wire [3:0] gen,prop,carries1,output0;



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

assign pp0[0]=1'b0;
assign pp1[0]=1'b0;



lut_6
#(.INIT6(64'hf800_0000_0000_0000))
inst_lut_6_4(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[2]         )  ,
    .I5 (b[3]         )  ,
    
    .O6 (gen[3]       )

);


lut_6
#(.INIT6(64'h07c0_ff00_0000_0000))
inst_lut_6_5(
    .I0 (a[0]         )  ,
    .I1 (a[1]         )  ,
    .I2 (a[2]         )  ,
    .I3 (a[3]         )  ,
    .I4 (b[2]         )  ,
    .I5 (b[3]         )  ,
    
    .O6 (prop[3]      )

);


lut_4
#(.INIT(16'h8000))
inst_lut_4_2(
    .a (pp0[4]         )  ,
    .b (pp1[2]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[1]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_3(
    .a (pp0[4]         )  ,
    .b (pp1[2]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[1]        )
);

lut_4
#(.INIT(16'h8000))
inst_lut_4_4(
    .a (pp0[5]         )  ,
    .b (pp1[3]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (gen[2]       )
);

lut_4
#(.INIT(16'h6000))
inst_lut_4_5(
    .a (pp0[5]         )  ,
    .b (pp1[3]         )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,

    .o (prop[2]        )
);


lut_4
#(.INIT(16'h8000))
inst_lut_4_6(
    .a (a[0]           )  ,
    .b (b[0]           )  ,
    .c (1'b1           )  ,
    .d (1'b1           )  ,
 
    .o (prod[0]        )
);


lut_4
#(.INIT(16'h7800))
inst_lut_4_7(
    .a (a[0]           )  ,
    .b (b[2]           )  ,
    .c (pp0[2]         )  ,
    .d (1'b1           )  ,
 
    .o (prod[2]        )
);


lut_5
#(.INIT5(32'h007f_7f80))
inst_lut_5_2(
    .I0 (pp0[2]          ),
    .I1 (a[0]            ),
    .I2 (b[2]            ),
    .I3 (pp0[3]          ),
    .I4 (pp1[1]          ),
     
    .O5 (prop[0]       )
);


lut_5
#(.INIT5(32'hffea_ea00))
inst_lut_5_3(
    .I0 (pp0[2]         )  ,
    .I1 (a[0]           )  ,
    .I2 (b[2]           )  ,
    .I3 (pp0[3]         )  ,
    .I4 (pp1[1]         )  ,
     
    .O5 (gen[0]       )
);


/*  lut_6
#(.INIT6(64'h007f_7f80_ffea_ea00))
inst_lut_6_8(
    .I0 (pp0[2]         )  ,
    .I1 (a[0]           )  ,
    .I2 (b[2]           )  ,
    .I3 (pp0[3]         )  ,
    .I4 (pp1[1]         )  ,
    .I5 (1'b1           )  ,
        
    .O5 (gen[0]        )    ,
    .O6 (prop[0]        )

); */



/* 
lut_6
#(.INIT6(64'h5fa0_5fa0_8888_8888))   /////误差产生的地方
inst_lut_6_11(
    .I0 (a[0]             )  ,
    .I1 (b[0]             )  ,
    .I2 (b[2]             )  ,
    .I3 (pp0[2]           )  ,
    .I4 (1'b1             )  ,
    .I5 (1'b1             )  ,
        
    .O5 (prod[0]           )  ,
    .O6 (prod[2]          )

); */

assign prod[6:3]=output0[3:0];
assign prod[7]=carries1[3];
assign prod[1]=pp0[1];



carry_4 carry_inst(
    .S      (prop      ),
    .DI     (gen       ),
    .CI     (1'b0      ),

    .CO     (carries1  ),
    .O      (output0   )

);

endmodule 