
class my_first_test extends uvm_test;
	`uvm_component_utils(my_first_test)

	my_env my_env_h; // handle to the environment

	function new (string name, uvm_component parent);
		super.new(name, parent);
	endfunction: new

	function void build_phase(uvm_phase phase);
		my_env_h = my_env::type_id::create("my_env_h", this); // NOTE: the parent of the environment is the test ('this')
	endfunction: build_phase

endclass: my_first_test
