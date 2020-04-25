
class my_env extends uvm_env;
	`uvm_component_utils(my_env)

	function new(string name, uvm_component parent);
		super.new(name, parent);
	endfunction: new

	function void build_phase(uvm_phase phase);
		// TODO: instantiate all your components (e.g. agents,
		// sequencers, scoreboard, coverage collector)
		super.build_phase(phase);
	endfunction: build_phase

	task run_phase(uvm_phase phase);
		phase. raise_objection(this); // 1st objection raised when time = 0

		#10; // TODO: Can put anything what you want to do, this example just wait 10 time-units

		phase.drop_objection(this); // test ends when all objections dropped

	endtask: run_phase

endclass: my_env
