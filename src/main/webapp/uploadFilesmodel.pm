dtmc

module modelo001
	smodelo001 : [-1..2] init 0;

	[A0_final] smodelo001=2 -> 1.0:(smodelo001'=2);
	[] smodelo001=0 -> 1.0:(smodelo001'=1);
	[A0_initial] smodelo001=1 -> 0.9:(smodelo001'=2) + 0.1:(smodelo001'=-1);
	[A0_fail] smodelo001=-1 -> 1.0:(smodelo001'=-1);
endmodule
