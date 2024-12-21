//Code for floating point and exponential number - Single Line Comment
module data_types;
   real pi;
   real time_period;
   initial
   begin
      pi          = 3.1415926;
      time_period = 33e2; //33 * 10^2 = 3300
      $display("Value of pi = %f", pi);
      $display("Value of pi = %0.3f", pi);
      $display("Value of time_period = %0d", time_period);
   end
endmodule

o/p:
Value of pi = 3.141593
Value of pi = 3.142
Value of time_period = 3300

/*SystemVerilog - Multi-line comment
//VLSI
Session*/
