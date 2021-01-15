

module carry_4(
    input   [3:0]     S       ,
    input   [3:0]     DI      ,
    input             CI      ,
    
    output  [3:0]     CO      ,
    output  [3:0]     O

);




carry_1 carry_inst0(
    .S      (S[0]      ),
    .DI     (DI[0]     ),
    .CI     (CI        ),

    .CO     (CO[0]     ),
    .O      (O[0]      )

);



carry_1 carry_inst1(
    .S      (S[1]      ),
    .DI     (DI[1]     ),
    .CI     (CO[0]     ),

    .CO     (CO[1]     ),
    .O      (O[1]      )

);



carry_1 carry_inst2(
    .S      (S[2]      ),
    .DI     (DI[2]     ),
    .CI     (CO[1]     ),

    .CO     (CO[2]     ),
    .O      (O[2]      )

);


carry_1 carry_inst3(
    .S      (S[3]      ),
    .DI     (DI[3]     ),
    .CI     (CO[2]     ),

    .CO     (CO[3]     ),
    .O      (O[3]      )

);



endmodule