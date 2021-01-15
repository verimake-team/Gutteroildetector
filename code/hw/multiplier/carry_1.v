
module  carry_1(
    input   S       ,
    input   DI      ,
    input   CI      ,
    
    output  CO      ,
    output  O

);


wire aw,bw;

/* 
lut_input lut1 (S,aw);
lut_input lut2 (CI,bw);
lut_output lut_o (aw^bw,O); */

xor xor1(O,S,CI);

assign CO=(S==1'b1)?CI:DI;


/* lut_4
#(.INIT(16'h6000))
inst_lut_4_0(
    .a (CI         )  ,
    .b (S         )  ,
    .c (1'b1       )  ,
    .d (1'b1       )  ,

    .o (O           )

);


lut_4
#(.INIT(16'hca00))
inst_lut_4_1(
    .a (DI         )  ,
    .b (CI         )  ,
    .c (S            )  ,
    .d (1'b1        )  ,

    .o (CO           )

); */

endmodule 