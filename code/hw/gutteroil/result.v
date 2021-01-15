module result_con(
    input                   clk         ,     
    input                   rst_n       ,
    input  [17:0]      ocandidate0      ,
    input  [17:0]      ocandidate1      ,
    input  [17:0]      ocandidate2      ,
    input  [17:0]      ocandidate3      ,
    input  [17:0]      ocandidate4      ,
    input  [17:0]      ocandidate5      ,
    input  [17:0]      ocandidate6      ,
 
    input  [17:0]      ecandidate0      ,
    input  [17:0]      ecandidate1      ,
    input  [17:0]      ecandidate2      ,
    input  [17:0]      ecandidate3      ,
    input  [17:0]      ecandidate4      ,
    input  [17:0]      ecandidate5      ,
    input  [17:0]      ecandidate6      ,

    output reg [ 2:0]      result

);

    wire   [17:0]     ocandidate;
    wire   [17:0]     ecandidate;
    reg   [2:0]     resulto;
    reg   [2:0]     resulte;

assign ocandidate = ocandidate0 + ocandidate1 + ocandidate2 + ocandidate3 +
                    ocandidate4 + ocandidate5 + ocandidate6;

assign ecandidate = ecandidate0 + ecandidate1 + ecandidate2 + ecandidate3 +
                    ecandidate4 + ecandidate5 + ecandidate6;


always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin         
        resulto <= 3'd0;     
    end
    else begin
        resulto <= ocandidate[0] + ocandidate[1] + ocandidate[2]; 
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin         
        resulte <= 3'd0;     
    end
    else begin
        resulte <= ecandidate[0] + ecandidate[1] + ecandidate[2]; 
    end
end

always@(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        result <= 3'd0;
    end
    else begin
        result <= resulte + resulto + 1'b1;
    end
end

endmodule