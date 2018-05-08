dtmc

module Interaction1
	sA : [-1..2] init 0;
	sB : [-1..0] init 0;

	[end_A] sA=2 -> 1.0:(sA'=2);
	[init_A] sA=0 -> 0.9:(sA'=1) + 0.1:(sA'=-1);
	[] sA=1 -> 0.9:(sA'=2) + 0.1:(sA'=-1);
	[fail_A] sA=-1 -> 1.0:(sA'=-1);
	[init_B] sB=0 -> 1.0:(sB'=0);
	[fail_B] sB=-1 -> 1.0:(sB'=-1);
endmodule
