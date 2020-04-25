
interface dut_if(input bit clk);
  wire data_in;
  wire data_out;
endinterface: dut_if

module dut (dut_if _if);

  logic data = 1'b0;
  always @(posedge _if.clk) begin
     data <= _if.data_in;
  end
  assign _if.data_out = data;

endmodule: dut
