dtmc

module modelo004
	smodelo004 : [-1..4] init 0;

	[] smodelo004=0 -> 1.0:(smodelo004'=1);
	[] smodelo004=4 -> 1.0:(smodelo004'=2);
	[A0_initial] smodelo004=1 -> 0.5:(smodelo004'=3) + 0.5:(smodelo004'=4);
	[A0_final] smodelo004=2 -> 1.0:(smodelo004'=2);
	[A0_fail] smodelo004=-1 -> 1.0:(smodelo004'=-1);
	[] smodelo004=3 -> 1.0:(smodelo004'=2);
endmodule
