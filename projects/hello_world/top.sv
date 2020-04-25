
module top;

  import uvm_pkg::*;
  import my_pkg::*;

  // interface instance
  dut_if dut_if1 ();

  // DUT instance
  dut i_dut ( ._if(dut_if1) );

  initial 
  begin
	  run_test("my_first_test");
  end

endmodule: top
