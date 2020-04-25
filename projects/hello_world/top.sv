
module top;

  import uvm_pkg::*;
  import my_pkg::*;

  //clock generation

  bit clk;

  always #5 clk=~clk;

  // interface instance

  dut_if dut_if1 (clk);

  // DUT instance

  dut i_dut ( ._if(dut_if1) );

  // run test
  initial 
  begin
	  run_test("my_first_test");
  end

endmodule: top
