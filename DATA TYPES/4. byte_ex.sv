module byte_ex;
   byte          data_byte;
   byte unsigned data_byte_unsigned;
   int           data_byte_initial_val;
   int           data_byte_init_t;
   initial
   begin
      if(!$value$plusargs("Initial_value=%d", data_byte_init_t))
      begin
         $display("Initial Value is not specified. Hence it is set to 0");
         data_byte_initial_val = 0;
      end
      else
      begin
         data_byte_initial_val = data_byte_init_t;
         $display("Initial value specified in command line = %0d", data_byte_initial_val);
      end
      for(int byte_loop_ind = data_byte_initial_val; byte_loop_ind < 500; byte_loop_ind++ )
      begin
         data_byte = byte_loop_ind;
         data_byte_unsigned = data_byte;
         $display("At time = %0dns Data_byte_unsigned = %0d (%0h) Data_byte = %0d (%0h)", $time, data_byte_unsigned, data_byte_unsigned, data_byte, data_byte);
      end
   end
endmodule
