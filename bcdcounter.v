module top_module (
    input clk,
    input reset,   // Synchronous active-high reset
    output [3:1] ena,
    output [15:0] q);

    
    bcd ones(clk,reset,1'b1,q[3:0]);
    bcd tens(clk,reset,ena[1],q[7:4]);
    bcd hunds(clk,reset,ena[2],q[11:8]);
    bcd thous(clk,reset,ena[3],q[15:12]);

    assign ena= {q[3:0]==4'd9 && q[7:4]==4'd9 && q[11:8]==4'd9,q[3:0]==4'd9 && q[7:4]==4'd9,q[3:0]==4'd9};
    
 endmodule
    
        
        module bcd(clk,res,en,q);
        input clk,res,en;
        output reg [3:0]q;
        
        always @(posedge clk)
            begin
                if(res)
                    q<=0;
                
                else if(en)
                    begin
                        if(q==4'd9)
                            q<=0;
                        else q<=q+1'b1;
                    end
            end  
endmodule
