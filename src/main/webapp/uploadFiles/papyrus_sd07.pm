dtmc

module Interaction1
	sA : [-1..3] init 0;
	sB : [-1..3] init 0;
	sC : [-1..2] init 0;

	[end_A] sA=3 -> 1.0:(sA'=3);
	[init_A] sA=0 -> 0.9:(sA'=1) + 0.1:(sA'=-1);
	[fail_A] sA=-1 -> 1.0:(sA'=-1);
	[] sA=2 -> 0.9:(sA'=3) + 0.1:(sA'=-1);
	[] sA=1 -> 0.9:(sA'=2) + 0.1:(sA'=-1);
	[end_B] sB=3 -> 1.0:(sB'=3);
	[init_B] sB=0 -> 0.8:(sB'=1) + 0.2:(sB'=-1);
	[fail_B] sB=-1 -> 1.0:(sB'=-1);
	[] sB=1 -> 0.8:(sB'=2) + 0.2:(sB'=-1);
	[] sB=2 -> 0.8:(sB'=3) + 0.2:(sB'=-1);
	[init_C] sC=0 -> 0.8:(sC'=1) + 0.2:(sC'=-1);
	[end_C] sC=2 -> 1.0:(sC'=2);
	[fail_C] sC=-1 -> 1.0:(sC'=-1);
	[] sC=1 -> 0.8:(sC'=2) + 0.2:(sC'=-1);
endmodule
