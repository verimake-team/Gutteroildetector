module sort(
    input                   clk             ,
    input                   rst_n           ,

    input       [17:0]      sigma_result    ,
    output  reg [17:0]      candidate0      ,
    output  reg [17:0]      candidate1      ,
    output  reg [17:0]      candidate2      ,
    output  reg [17:0]      candidate3      ,
    output  reg [17:0]      candidate4      ,
    output  reg [17:0]      candidate5      ,
    output  reg [17:0]      candidate6      
);
            reg[ 2:0]      location        ;

always @(posedge clk or negedge rst_n)begin     
    if(!rst_n) begin
        location <= 3'd0;
    end
    else begin
        if(sigma_result<candidate0) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate1) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate2) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate3) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate4) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate5) begin
            location <= location + 1'b1;
        end
        else if(sigma_result<candidate6) begin
            location <= location + 1'b1;
        end
        else begin
            location <= 3'd0;
        end
    end
end

always @(posedge clk or negedge rst_n)begin
    if(!rst_n) begin
        candidate0 <= 18'h3fff;
        candidate1 <= 18'h3fff;
        candidate2 <= 18'h3fff;
        candidate3 <= 18'h3fff;
        candidate4 <= 18'h3fff;
        candidate5 <= 18'h3fff;
        candidate6 <= 18'h3fff;
    end
    else begin
        case (location)
            3'd1:begin  
                candidate0 <= sigma_result;
                candidate1 <= candidate1;
                candidate2 <= candidate2;
                candidate3 <= candidate3;
                candidate4 <= candidate4;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
            3'd2:begin
                candidate0 <= candidate1;
                candidate1 <= sigma_result;
                candidate2 <= candidate2;
                candidate3 <= candidate3;
                candidate4 <= candidate4;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
            3'd3:begin
                candidate0 <= candidate1;
                candidate1 <= candidate2;
                candidate2 <= sigma_result;
                candidate3 <= candidate3;
                candidate4 <= candidate4;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
            3'd4:begin
                candidate0 <= candidate1;
                candidate1 <= candidate2;
                candidate2 <= candidate3;
                candidate3 <= sigma_result;
                candidate4 <= candidate4;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
            3'd5:begin       
                candidate0 <= candidate1;
                candidate1 <= candidate2;
                candidate2 <= candidate3;
                candidate3 <= candidate4;
                candidate4 <= sigma_result;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
            3'd6:begin       
                candidate0 <= candidate1;
                candidate1 <= candidate2;
                candidate2 <= candidate3;
                candidate3 <= candidate4;
                candidate4 <= candidate5;
                candidate5 <= sigma_result;
                candidate6 <= candidate6;
            end
            3'd7:begin       
                candidate0 <= candidate1;
                candidate1 <= candidate2;
                candidate2 <= candidate3;
                candidate3 <= candidate4;
                candidate4 <= candidate5;
                candidate5 <= candidate6;
                candidate6 <= sigma_result;
            end
            default:begin    
                candidate0 <= candidate0;
                candidate1 <= candidate1;
                candidate2 <= candidate2;
                candidate3 <= candidate3;
                candidate4 <= candidate4;
                candidate5 <= candidate5;
                candidate6 <= candidate6;
            end
        endcase
    end
end


endmodule