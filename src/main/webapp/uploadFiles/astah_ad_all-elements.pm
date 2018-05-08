dtmc

module All_Elements
	sAll_Elements : [-1..4] init 0;

	[] sAll_Elements=0 -> 1.0:(sAll_Elements'=1);
	[] sAll_Elements=4 -> 1.0:(sAll_Elements'=2);
	[A0_initial] sAll_Elements=1 -> 0.5:(sAll_Elements'=3) + 0.5:(sAll_Elements'=4);
	[A0_final] sAll_Elements=2 -> 1.0:(sAll_Elements'=2);
	[] sAll_Elements=3 -> 1.0:(sAll_Elements'=2);
	[A0_fail] sAll_Elements=-1 -> 1.0:(sAll_Elements'=-1);
endmodule
