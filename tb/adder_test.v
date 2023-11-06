`include "../hdl/adder.v"
module adder_tb;
reg a, b;
wire sum;

//dut instance
adder dut(a,b,sum);

initial begin
    $monitor("the sum of a : %0b b : %0b sum : %0b",a,b,sum);
end

initial begin
    a=1'b0;    b=1'b0; 
    #5;

    a=1'b0;    b=1'b1; 
    #5;

    a=1'b1;    b=1'b0; 
    #5;

    a=1'b1;    b=1'b1; 
    #5;
end
endmodule