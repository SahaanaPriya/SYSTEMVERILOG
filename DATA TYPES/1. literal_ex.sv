module literal_ex;
   parameter WIDTH = 8;
   reg [WIDTH-1:0]m;
   reg [WIDTH-1:0]n;
   reg [WIDTH-1:0]o;
   reg [WIDTH-1:0]p;
   initial
   begin
      m = 'h0;
      n = 'Z;
      o = 'X;
      p = '1;
      $display("m = 0x%0h, n = 0x%0h, o = 0x%0h, p = 0x%0h",m,n,o,p);
   end
endmodule



o/p: 
m = 0x0, n = 0xzz, o = 0xxx, p = 0xff
