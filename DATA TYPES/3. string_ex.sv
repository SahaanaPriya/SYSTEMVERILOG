//Code for strings
module string_ex;
   bit [8*15:0] my_message;
   byte my_letter;
   string message;
   initial
   begin
      my_message = "SystemVerilog Session";
      my_letter = "S";
      message = "Hello World";
      $display("The message is = %0s", my_message);
      $display("The letter is %s", my_letter);
      $display("The message is %s", message);
      $display("This is a SystemVerilog code. It is an example for Strings.");
      $display("This is a SystemVerilog code.\nIt is an example for Strings.");
   end
endmodule

o/p:
The message is = Verilog Session
The letter is S
The message is Hello World
This is a SystemVerilog code. It is an example for Strings.
This is a SystemVerilog code.
It is an example for Strings.
