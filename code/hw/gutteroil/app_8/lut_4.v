
module lut_4
#(parameter INIT=16'h0000)
(
    input     a   ,
    input     b   ,
    input     c   ,
    input     d   ,
    
    output    o
);


wire aw,bw,cw,dw;

lut_input lut1 (a,aw);
lut_input lut2 (b,bw);
lut_input lut3 (c,cw);
lut_input lut4 (d,dw);
lut_output lut_o (INIT[{dw,cw,bw,aw}],o);

endmodule