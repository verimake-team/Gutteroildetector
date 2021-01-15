module KNN(
    input           clk_knn     ,
    input           rst_n       ,

    input  [31:0]   feature     ,
    


    output [ 2:0]   result
);
    wire  [31:0]   train_data  ;

    wire   [15:0]   ds_result0;
    wire   [15:0]   ds_result1;
    wire   [15:0]   ds_result2;
    wire   [15:0]   ds_result3;

    wire   [17:0]   sigma_result   ;
    wire   [17:0]      ocandidate0;
    wire   [17:0]      ocandidate1;
    wire   [17:0]      ocandidate2;
    wire   [17:0]      ocandidate3;
    wire   [17:0]      ocandidate4;
    wire   [17:0]      ocandidate5;
    wire   [17:0]      ocandidate6;
    wire   [17:0]      ecandidate0;
    wire   [17:0]      ecandidate1;
    wire   [17:0]      ecandidate2;
    wire   [17:0]      ecandidate3;
    wire   [17:0]      ecandidate4;
    wire   [17:0]      ecandidate5;
    wire   [17:0]      ecandidate6;

    wire   [ 9:0]      address;

FSM  u_FSM (
    .clk                     ( clk_knn   ),
    .rst_n                   ( rst_n     ),

    .address                 ( address   )
);

rom u_rom(
    .address        (address),
    .clock          (clk_knn),
    .q              (train_data)
);

ds  u_ds0 (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .feature                 ( feature[ 7: 0]      ),
    .train_data              ( train_data[ 7: 0]   ),

    .ds_result               ( ds_result0    )
);

ds  u_ds1 (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .feature                 ( feature[15: 8]      ),
    .train_data              ( train_data[15: 8]   ),

    .ds_result               ( ds_result1    )
);

ds  u_ds2 (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .feature                 ( feature[23:16]      ),
    .train_data              ( train_data[23:16]   ),

    .ds_result               ( ds_result2    )
);

ds  u_ds3 (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .feature                 ( feature[31:24]      ),
    .train_data              ( train_data[31:24]   ),

    .ds_result               ( ds_result3    )
);

sigma  u_sigma (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .ds_result0              ( ds_result0     ),
    .ds_result1              ( ds_result1     ),
    .ds_result2              ( ds_result2     ),
    .ds_result3              ( ds_result3     ),

    .sigma_result            ( sigma_result   )
);

sort  e_u_sort (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .sigma_result            ( sigma_result   ),

    .candidate0              ( ecandidate0     ),
    .candidate1              ( ecandidate1     ),
    .candidate2              ( ecandidate2     ),
    .candidate3              ( ecandidate3     ),
    .candidate4              ( ecandidate4     ),
    .candidate5              ( ecandidate5     ),
    .candidate6              ( ecandidate6     )
);

sort  o_u_sort (
    .clk                     ( clk_knn            ),
    .rst_n                   ( rst_n          ),
    .sigma_result            ( sigma_result   ),

    .candidate0              ( ocandidate0     ),
    .candidate1              ( ocandidate1     ),
    .candidate2              ( ocandidate2     ),
    .candidate3              ( ocandidate3     ),
    .candidate4              ( ocandidate4     ),
    .candidate5              ( ocandidate5     ),
    .candidate6              ( ocandidate6     )
);

result_con  u_result (
    .clk                     ( clk_knn           ),
    .rst_n                   ( rst_n         ),
    .ocandidate0             ( ocandidate0   ),
    .ocandidate1             ( ocandidate1   ),
    .ocandidate2             ( ocandidate2   ),
    .ocandidate3             ( ocandidate3   ),
    .ocandidate4             ( ocandidate4   ),
    .ocandidate5             ( ocandidate5   ),
    .ocandidate6             ( ocandidate6   ),
    .ecandidate0             ( ecandidate0   ),
    .ecandidate1             ( ecandidate1   ),
    .ecandidate2             ( ecandidate2   ),
    .ecandidate3             ( ecandidate3   ),
    .ecandidate4             ( ecandidate4   ),
    .ecandidate5             ( ecandidate5   ),
    .ecandidate6             ( ecandidate6   ),

    .result                  ( result        )
);

endmodule