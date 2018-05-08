dtmc

module 
	sA : [-1..2] init 0;
	sB : [-1..2] init 0;

	[end_A] sA=2 -> 1.0:(sA'=2);
	[fail_A] sA=-1 -> 1.0:(sA'=-1);
	[] sA=1 & sB=2 -> 1.0:(sA'=2);
	[init_A] sA=0 -> 0.8:(sA'=1) + 0.2:(sA'=-1);
	[init_B] sB=0 & sA=1 -> 1.0:(sB'=1);
	[fail_B] sB=-1 -> 1.0:(sB'=-1);
	[] sB=1 -> 0.9:(sB'=2) + 0.1:(sB'=-1);
	[end_B] sB=2 -> 1.0:(sB'=2);
endmodule
