

module adder(
    input    [7:0]      prod1,
    input    [7:0]      prod2,
    input    [7:0]      prod3,   
    input    [7:0]      prod4,

    output   [15:0]     PROD
);


wire [7:0]   a_reg, b_reg, c_reg;
wire [3:0]   d_reg;
wire [12:0]  g,p;
wire [12:0]  c_i;
wire [15:0]  s_reg;

//assign a_reg=prod4[3:0] & prod1[7:4];
assign a_reg={prod4[3:0],prod1[7:4]};
assign b_reg=prod2;
assign c_reg=prod3;
assign d_reg=prod4[7:4];
assign g[0]=1'b0;
assign p[12]=1'b0;
assign g[12:10]=3'd0;
assign p[11:9]=d_reg[3:1];
assign c_i[0]=1'b0;
assign s_reg[3:0]=prod1[3:0];
assign PROD=s_reg;





lut_6
#(.INIT6(64'h9696_9696_e8e8_e8e8))
inst_lut_6_30a(
    .I0 (c_reg[0]       )  ,
    .I1 (b_reg[0]       )  ,
    .I2 (a_reg[0]       )  ,
    .I3 (1'b1           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[1]           )  ,
    .O6 (p[0]           )
);


lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_31a(
    .I0 (c_reg[1]       )  ,
    .I1 (b_reg[1]       )  ,
    .I2 (a_reg[1]       )  ,
    .I3 (g[1]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[2]           )  ,
    .O6 (p[1]           )
);

lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_32a(
    .I0 (c_reg[2]       )  ,
    .I1 (b_reg[2]       )  ,
    .I2 (a_reg[2]       )  ,
    .I3 (g[2]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[3]           )  ,
    .O6 (p[2]           )
);

lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_33a(
    .I0 (c_reg[3]       )  ,
    .I1 (b_reg[3]       )  ,
    .I2 (a_reg[3]       )  ,
    .I3 (g[3]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[4]           )  ,
    .O6 (p[3]           )
);

lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_34a(
    .I0 (c_reg[4]       )  ,
    .I1 (b_reg[4]       )  ,
    .I2 (a_reg[4]       )  ,
    .I3 (g[4]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[5]           )  ,
    .O6 (p[4]           )
);


lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_35a(
    .I0 (c_reg[5]       )  ,
    .I1 (b_reg[5]       )  ,
    .I2 (a_reg[5]       )  ,
    .I3 (g[5]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[6]           )  ,
    .O6 (p[5]           )
);

lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_36a(
    .I0 (c_reg[6]       )  ,
    .I1 (b_reg[6]       )  ,
    .I2 (a_reg[6]       )  ,
    .I3 (g[6]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[7]           )  ,
    .O6 (p[6]           )
);


lut_6
#(.INIT6(64'h6996_6996_e8e8_e8e8))
inst_lut_6_37a(
    .I0 (c_reg[7]       )  ,
    .I1 (b_reg[7]       )  ,
    .I2 (a_reg[7]       )  ,
    .I3 (g[7]           )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[8]           )  ,
    .O6 (p[7]           )
);


lut_6
#(.INIT6(64'h17e8_17e8_e8e8_e8e8))
inst_lut_6_38a(
    .I0 (c_reg[7]       )  ,
    .I1 (b_reg[7]       )  ,
    .I2 (a_reg[7]       )  ,
    .I3 (d_reg[0]       )  ,
    .I4 (1'b1           )  ,
    .I5 (1'b1           )  ,
 
    .O5 (g[9]           )  ,
    .O6 (p[8]           )
);




/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////


carry_4 carry_inst_0(
    .S      (p[3:0]       ),
    .DI     (g[3:0]       ),
    .CI     (1'b0         ),

    .CO     (c_i[4:1]     ),
    .O      (s_reg[7:4]   )

);

carry_4 carry_inst_1(
    .S      (p[7:4]       ),
    .DI     (g[7:4]       ),
    .CI     (c_i[4]       ),

    .CO     (c_i[8:5]     ),
    .O      (s_reg[11:8]  )

);



carry_4 carry_inst_2(
    .S      (p[11:8]       ),
    .DI     (g[12:9]       ),
    .CI     (c_i[8]        ),

    .CO     (c_i[12:9]     ),
    .O      (s_reg[15:12]   )

);




endmodule