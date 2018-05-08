dtmc

module All_Elements_Repetition
	sAll_Elements_Repetition : [-1..5] init 0;

	[] sAll_Elements_Repetition=3 -> 1.0:(sAll_Elements_Repetition'=2);
	[] sAll_Elements_Repetition=0 -> 1.0:(sAll_Elements_Repetition'=1);
	[] sAll_Elements_Repetition=5 -> 1.0:(sAll_Elements_Repetition'=2);
	[A0_fail] sAll_Elements_Repetition=-1 -> 1.0:(sAll_Elements_Repetition'=-1);
	[A0_final] sAll_Elements_Repetition=2 -> 1.0:(sAll_Elements_Repetition'=2);
	[A0_initial] sAll_Elements_Repetition=1 -> 0.5:(sAll_Elements_Repetition'=3) + 0.5:(sAll_Elements_Repetition'=4);
	[] sAll_Elements_Repetition=4 -> 1.0:(sAll_Elements_Repetition'=5);
endmodule
