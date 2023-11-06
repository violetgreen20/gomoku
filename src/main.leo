program gomoku.aleo {
	struct Row {
		c0: u8,
		c1: u8,
		c2: u8,
		c3: u8,
		c4: u8,
		c5: u8,
		c6: u8,
		c7: u8,
		c8: u8,
		c9: u8,
	}

	struct Board {
		r0: Row,
		r1: Row,
		r2: Row,
		r3: Row,
		r4: Row,
		r5: Row,
		r6: Row,
		r7: Row,
		r8: Row,
		r9: Row,
	}

	record Game {
		owner: address,
		player1: address,
		player2: address,
		board: Board,
		won: u8,
	}

	function check_win(b: Board, p: u8) -> bool {
		return
			(b.r0.c0 == p && b.r0.c1 == p && b.r0.c2 == p && b.r0.c3 == p) ||
			(b.r0.c1 == p && b.r0.c2 == p && b.r0.c3 == p && b.r0.c4 == p) ||
			(b.r0.c2 == p && b.r0.c3 == p && b.r0.c4 == p && b.r0.c5 == p) ||
			(b.r0.c3 == p && b.r0.c4 == p && b.r0.c5 == p && b.r0.c6 == p) ||
			(b.r0.c4 == p && b.r0.c5 == p && b.r0.c6 == p && b.r0.c7 == p) ||
			(b.r0.c5 == p && b.r0.c6 == p && b.r0.c7 == p && b.r0.c8 == p) ||
			(b.r0.c6 == p && b.r0.c7 == p && b.r0.c8 == p && b.r0.c9 == p) ||
			(b.r1.c0 == p && b.r1.c1 == p && b.r1.c2 == p && b.r1.c3 == p) ||
			(b.r1.c1 == p && b.r1.c2 == p && b.r1.c3 == p && b.r1.c4 == p) ||
			(b.r1.c2 == p && b.r1.c3 == p && b.r1.c4 == p && b.r1.c5 == p) ||
			(b.r1.c3 == p && b.r1.c4 == p && b.r1.c5 == p && b.r1.c6 == p) ||
			(b.r1.c4 == p && b.r1.c5 == p && b.r1.c6 == p && b.r1.c7 == p) ||
			(b.r1.c5 == p && b.r1.c6 == p && b.r1.c7 == p && b.r1.c8 == p) ||
			(b.r1.c6 == p && b.r1.c7 == p && b.r1.c8 == p && b.r1.c9 == p) ||
			(b.r2.c0 == p && b.r2.c1 == p && b.r2.c2 == p && b.r2.c3 == p) ||
			(b.r2.c1 == p && b.r2.c2 == p && b.r2.c3 == p && b.r2.c4 == p) ||
			(b.r2.c2 == p && b.r2.c3 == p && b.r2.c4 == p && b.r2.c5 == p) ||
			(b.r2.c3 == p && b.r2.c4 == p && b.r2.c5 == p && b.r2.c6 == p) ||
			(b.r2.c4 == p && b.r2.c5 == p && b.r2.c6 == p && b.r2.c7 == p) ||
			(b.r2.c5 == p && b.r2.c6 == p && b.r2.c7 == p && b.r2.c8 == p) ||
			(b.r2.c6 == p && b.r2.c7 == p && b.r2.c8 == p && b.r2.c9 == p) ||
			(b.r3.c0 == p && b.r3.c1 == p && b.r3.c2 == p && b.r3.c3 == p) ||
			(b.r3.c1 == p && b.r3.c2 == p && b.r3.c3 == p && b.r3.c4 == p) ||
			(b.r3.c2 == p && b.r3.c3 == p && b.r3.c4 == p && b.r3.c5 == p) ||
			(b.r3.c3 == p && b.r3.c4 == p && b.r3.c5 == p && b.r3.c6 == p) ||
			(b.r3.c4 == p && b.r3.c5 == p && b.r3.c6 == p && b.r3.c7 == p) ||
			(b.r3.c5 == p && b.r3.c6 == p && b.r3.c7 == p && b.r3.c8 == p) ||
			(b.r3.c6 == p && b.r3.c7 == p && b.r3.c8 == p && b.r3.c9 == p) ||
			(b.r4.c0 == p && b.r4.c1 == p && b.r4.c2 == p && b.r4.c3 == p) ||
			(b.r4.c1 == p && b.r4.c2 == p && b.r4.c3 == p && b.r4.c4 == p) ||
			(b.r4.c2 == p && b.r4.c3 == p && b.r4.c4 == p && b.r4.c5 == p) ||
			(b.r4.c3 == p && b.r4.c4 == p && b.r4.c5 == p && b.r4.c6 == p) ||
			(b.r4.c4 == p && b.r4.c5 == p && b.r4.c6 == p && b.r4.c7 == p) ||
			(b.r4.c5 == p && b.r4.c6 == p && b.r4.c7 == p && b.r4.c8 == p) ||
			(b.r4.c6 == p && b.r4.c7 == p && b.r4.c8 == p && b.r4.c9 == p) ||
			(b.r5.c0 == p && b.r5.c1 == p && b.r5.c2 == p && b.r5.c3 == p) ||
			(b.r5.c1 == p && b.r5.c2 == p && b.r5.c3 == p && b.r5.c4 == p) ||
			(b.r5.c2 == p && b.r5.c3 == p && b.r5.c4 == p && b.r5.c5 == p) ||
			(b.r5.c3 == p && b.r5.c4 == p && b.r5.c5 == p && b.r5.c6 == p) ||
			(b.r5.c4 == p && b.r5.c5 == p && b.r5.c6 == p && b.r5.c7 == p) ||
			(b.r5.c5 == p && b.r5.c6 == p && b.r5.c7 == p && b.r5.c8 == p) ||
			(b.r5.c6 == p && b.r5.c7 == p && b.r5.c8 == p && b.r5.c9 == p) ||
			(b.r6.c0 == p && b.r6.c1 == p && b.r6.c2 == p && b.r6.c3 == p) ||
			(b.r6.c1 == p && b.r6.c2 == p && b.r6.c3 == p && b.r6.c4 == p) ||
			(b.r6.c2 == p && b.r6.c3 == p && b.r6.c4 == p && b.r6.c5 == p) ||
			(b.r6.c3 == p && b.r6.c4 == p && b.r6.c5 == p && b.r6.c6 == p) ||
			(b.r6.c4 == p && b.r6.c5 == p && b.r6.c6 == p && b.r6.c7 == p) ||
			(b.r6.c5 == p && b.r6.c6 == p && b.r6.c7 == p && b.r6.c8 == p) ||
			(b.r6.c6 == p && b.r6.c7 == p && b.r6.c8 == p && b.r6.c9 == p) ||
			(b.r7.c0 == p && b.r7.c1 == p && b.r7.c2 == p && b.r7.c3 == p) ||
			(b.r7.c1 == p && b.r7.c2 == p && b.r7.c3 == p && b.r7.c4 == p) ||
			(b.r7.c2 == p && b.r7.c3 == p && b.r7.c4 == p && b.r7.c5 == p) ||
			(b.r7.c3 == p && b.r7.c4 == p && b.r7.c5 == p && b.r7.c6 == p) ||
			(b.r7.c4 == p && b.r7.c5 == p && b.r7.c6 == p && b.r7.c7 == p) ||
			(b.r7.c5 == p && b.r7.c6 == p && b.r7.c7 == p && b.r7.c8 == p) ||
			(b.r7.c6 == p && b.r7.c7 == p && b.r7.c8 == p && b.r7.c9 == p) ||
			(b.r8.c0 == p && b.r8.c1 == p && b.r8.c2 == p && b.r8.c3 == p) ||
			(b.r8.c1 == p && b.r8.c2 == p && b.r8.c3 == p && b.r8.c4 == p) ||
			(b.r8.c2 == p && b.r8.c3 == p && b.r8.c4 == p && b.r8.c5 == p) ||
			(b.r8.c3 == p && b.r8.c4 == p && b.r8.c5 == p && b.r8.c6 == p) ||
			(b.r8.c4 == p && b.r8.c5 == p && b.r8.c6 == p && b.r8.c7 == p) ||
			(b.r8.c5 == p && b.r8.c6 == p && b.r8.c7 == p && b.r8.c8 == p) ||
			(b.r8.c6 == p && b.r8.c7 == p && b.r8.c8 == p && b.r8.c9 == p) ||
			(b.r9.c0 == p && b.r9.c1 == p && b.r9.c2 == p && b.r9.c3 == p) ||
			(b.r9.c1 == p && b.r9.c2 == p && b.r9.c3 == p && b.r9.c4 == p) ||
			(b.r9.c2 == p && b.r9.c3 == p && b.r9.c4 == p && b.r9.c5 == p) ||
			(b.r9.c3 == p && b.r9.c4 == p && b.r9.c5 == p && b.r9.c6 == p) ||
			(b.r9.c4 == p && b.r9.c5 == p && b.r9.c6 == p && b.r9.c7 == p) ||
			(b.r9.c5 == p && b.r9.c6 == p && b.r9.c7 == p && b.r9.c8 == p) ||
			(b.r9.c6 == p && b.r9.c7 == p && b.r9.c8 == p && b.r9.c9 == p) ||
			(b.r0.c0 == p && b.r1.c0 == p && b.r2.c0 == p && b.r3.c0 == p) ||
			(b.r0.c1 == p && b.r1.c1 == p && b.r2.c1 == p && b.r3.c1 == p) ||
			(b.r0.c2 == p && b.r1.c2 == p && b.r2.c2 == p && b.r3.c2 == p) ||
			(b.r0.c3 == p && b.r1.c3 == p && b.r2.c3 == p && b.r3.c3 == p) ||
			(b.r0.c4 == p && b.r1.c4 == p && b.r2.c4 == p && b.r3.c4 == p) ||
			(b.r0.c5 == p && b.r1.c5 == p && b.r2.c5 == p && b.r3.c5 == p) ||
			(b.r0.c6 == p && b.r1.c6 == p && b.r2.c6 == p && b.r3.c6 == p) ||
			(b.r0.c7 == p && b.r1.c7 == p && b.r2.c7 == p && b.r3.c7 == p) ||
			(b.r0.c8 == p && b.r1.c8 == p && b.r2.c8 == p && b.r3.c8 == p) ||
			(b.r0.c9 == p && b.r1.c9 == p && b.r2.c9 == p && b.r3.c9 == p) ||
			(b.r1.c0 == p && b.r2.c0 == p && b.r3.c0 == p && b.r4.c0 == p) ||
			(b.r1.c1 == p && b.r2.c1 == p && b.r3.c1 == p && b.r4.c1 == p) ||
			(b.r1.c2 == p && b.r2.c2 == p && b.r3.c2 == p && b.r4.c2 == p) ||
			(b.r1.c3 == p && b.r2.c3 == p && b.r3.c3 == p && b.r4.c3 == p) ||
			(b.r1.c4 == p && b.r2.c4 == p && b.r3.c4 == p && b.r4.c4 == p) ||
			(b.r1.c5 == p && b.r2.c5 == p && b.r3.c5 == p && b.r4.c5 == p) ||
			(b.r1.c6 == p && b.r2.c6 == p && b.r3.c6 == p && b.r4.c6 == p) ||
			(b.r1.c7 == p && b.r2.c7 == p && b.r3.c7 == p && b.r4.c7 == p) ||
			(b.r1.c8 == p && b.r2.c8 == p && b.r3.c8 == p && b.r4.c8 == p) ||
			(b.r1.c9 == p && b.r2.c9 == p && b.r3.c9 == p && b.r4.c9 == p) ||
			(b.r2.c0 == p && b.r3.c0 == p && b.r4.c0 == p && b.r5.c0 == p) ||
			(b.r2.c1 == p && b.r3.c1 == p && b.r4.c1 == p && b.r5.c1 == p) ||
			(b.r2.c2 == p && b.r3.c2 == p && b.r4.c2 == p && b.r5.c2 == p) ||
			(b.r2.c3 == p && b.r3.c3 == p && b.r4.c3 == p && b.r5.c3 == p) ||
			(b.r2.c4 == p && b.r3.c4 == p && b.r4.c4 == p && b.r5.c4 == p) ||
			(b.r2.c5 == p && b.r3.c5 == p && b.r4.c5 == p && b.r5.c5 == p) ||
			(b.r2.c6 == p && b.r3.c6 == p && b.r4.c6 == p && b.r5.c6 == p) ||
			(b.r2.c7 == p && b.r3.c7 == p && b.r4.c7 == p && b.r5.c7 == p) ||
			(b.r2.c8 == p && b.r3.c8 == p && b.r4.c8 == p && b.r5.c8 == p) ||
			(b.r2.c9 == p && b.r3.c9 == p && b.r4.c9 == p && b.r5.c9 == p) ||
			(b.r3.c0 == p && b.r4.c0 == p && b.r5.c0 == p && b.r6.c0 == p) ||
			(b.r3.c1 == p && b.r4.c1 == p && b.r5.c1 == p && b.r6.c1 == p) ||
			(b.r3.c2 == p && b.r4.c2 == p && b.r5.c2 == p && b.r6.c2 == p) ||
			(b.r3.c3 == p && b.r4.c3 == p && b.r5.c3 == p && b.r6.c3 == p) ||
			(b.r3.c4 == p && b.r4.c4 == p && b.r5.c4 == p && b.r6.c4 == p) ||
			(b.r3.c5 == p && b.r4.c5 == p && b.r5.c5 == p && b.r6.c5 == p) ||
			(b.r3.c6 == p && b.r4.c6 == p && b.r5.c6 == p && b.r6.c6 == p) ||
			(b.r3.c7 == p && b.r4.c7 == p && b.r5.c7 == p && b.r6.c7 == p) ||
			(b.r3.c8 == p && b.r4.c8 == p && b.r5.c8 == p && b.r6.c8 == p) ||
			(b.r3.c9 == p && b.r4.c9 == p && b.r5.c9 == p && b.r6.c9 == p) ||
			(b.r4.c0 == p && b.r5.c0 == p && b.r6.c0 == p && b.r7.c0 == p) ||
			(b.r4.c1 == p && b.r5.c1 == p && b.r6.c1 == p && b.r7.c1 == p) ||
			(b.r4.c2 == p && b.r5.c2 == p && b.r6.c2 == p && b.r7.c2 == p) ||
			(b.r4.c3 == p && b.r5.c3 == p && b.r6.c3 == p && b.r7.c3 == p) ||
			(b.r4.c4 == p && b.r5.c4 == p && b.r6.c4 == p && b.r7.c4 == p) ||
			(b.r4.c5 == p && b.r5.c5 == p && b.r6.c5 == p && b.r7.c5 == p) ||
			(b.r4.c6 == p && b.r5.c6 == p && b.r6.c6 == p && b.r7.c6 == p) ||
			(b.r4.c7 == p && b.r5.c7 == p && b.r6.c7 == p && b.r7.c7 == p) ||
			(b.r4.c8 == p && b.r5.c8 == p && b.r6.c8 == p && b.r7.c8 == p) ||
			(b.r4.c9 == p && b.r5.c9 == p && b.r6.c9 == p && b.r7.c9 == p) ||
			(b.r5.c0 == p && b.r6.c0 == p && b.r7.c0 == p && b.r8.c0 == p) ||
			(b.r5.c1 == p && b.r6.c1 == p && b.r7.c1 == p && b.r8.c1 == p) ||
			(b.r5.c2 == p && b.r6.c2 == p && b.r7.c2 == p && b.r8.c2 == p) ||
			(b.r5.c3 == p && b.r6.c3 == p && b.r7.c3 == p && b.r8.c3 == p) ||
			(b.r5.c4 == p && b.r6.c4 == p && b.r7.c4 == p && b.r8.c4 == p) ||
			(b.r5.c5 == p && b.r6.c5 == p && b.r7.c5 == p && b.r8.c5 == p) ||
			(b.r5.c6 == p && b.r6.c6 == p && b.r7.c6 == p && b.r8.c6 == p) ||
			(b.r5.c7 == p && b.r6.c7 == p && b.r7.c7 == p && b.r8.c7 == p) ||
			(b.r5.c8 == p && b.r6.c8 == p && b.r7.c8 == p && b.r8.c8 == p) ||
			(b.r5.c9 == p && b.r6.c9 == p && b.r7.c9 == p && b.r8.c9 == p) ||
			(b.r6.c0 == p && b.r7.c0 == p && b.r8.c0 == p && b.r9.c0 == p) ||
			(b.r6.c1 == p && b.r7.c1 == p && b.r8.c1 == p && b.r9.c1 == p) ||
			(b.r6.c2 == p && b.r7.c2 == p && b.r8.c2 == p && b.r9.c2 == p) ||
			(b.r6.c3 == p && b.r7.c3 == p && b.r8.c3 == p && b.r9.c3 == p) ||
			(b.r6.c4 == p && b.r7.c4 == p && b.r8.c4 == p && b.r9.c4 == p) ||
			(b.r6.c5 == p && b.r7.c5 == p && b.r8.c5 == p && b.r9.c5 == p) ||
			(b.r6.c6 == p && b.r7.c6 == p && b.r8.c6 == p && b.r9.c6 == p) ||
			(b.r6.c7 == p && b.r7.c7 == p && b.r8.c7 == p && b.r9.c7 == p) ||
			(b.r6.c8 == p && b.r7.c8 == p && b.r8.c8 == p && b.r9.c8 == p) ||
			(b.r6.c9 == p && b.r7.c9 == p && b.r8.c9 == p && b.r9.c9 == p) ||
			(b.r3.c0 == p && b.r2.c1 == p && b.r1.c2 == p && b.r0.c3 == p) ||
			(b.r3.c1 == p && b.r2.c2 == p && b.r1.c3 == p && b.r0.c4 == p) ||
			(b.r3.c2 == p && b.r2.c3 == p && b.r1.c4 == p && b.r0.c5 == p) ||
			(b.r3.c3 == p && b.r2.c4 == p && b.r1.c5 == p && b.r0.c6 == p) ||
			(b.r3.c4 == p && b.r2.c5 == p && b.r1.c6 == p && b.r0.c7 == p) ||
			(b.r3.c5 == p && b.r2.c6 == p && b.r1.c7 == p && b.r0.c8 == p) ||
			(b.r3.c6 == p && b.r2.c7 == p && b.r1.c8 == p && b.r0.c9 == p) ||
			(b.r4.c0 == p && b.r3.c1 == p && b.r2.c2 == p && b.r1.c3 == p) ||
			(b.r4.c1 == p && b.r3.c2 == p && b.r2.c3 == p && b.r1.c4 == p) ||
			(b.r4.c2 == p && b.r3.c3 == p && b.r2.c4 == p && b.r1.c5 == p) ||
			(b.r4.c3 == p && b.r3.c4 == p && b.r2.c5 == p && b.r1.c6 == p) ||
			(b.r4.c4 == p && b.r3.c5 == p && b.r2.c6 == p && b.r1.c7 == p) ||
			(b.r4.c5 == p && b.r3.c6 == p && b.r2.c7 == p && b.r1.c8 == p) ||
			(b.r4.c6 == p && b.r3.c7 == p && b.r2.c8 == p && b.r1.c9 == p) ||
			(b.r5.c0 == p && b.r4.c1 == p && b.r3.c2 == p && b.r2.c3 == p) ||
			(b.r5.c1 == p && b.r4.c2 == p && b.r3.c3 == p && b.r2.c4 == p) ||
			(b.r5.c2 == p && b.r4.c3 == p && b.r3.c4 == p && b.r2.c5 == p) ||
			(b.r5.c3 == p && b.r4.c4 == p && b.r3.c5 == p && b.r2.c6 == p) ||
			(b.r5.c4 == p && b.r4.c5 == p && b.r3.c6 == p && b.r2.c7 == p) ||
			(b.r5.c5 == p && b.r4.c6 == p && b.r3.c7 == p && b.r2.c8 == p) ||
			(b.r5.c6 == p && b.r4.c7 == p && b.r3.c8 == p && b.r2.c9 == p) ||
			(b.r6.c0 == p && b.r5.c1 == p && b.r4.c2 == p && b.r3.c3 == p) ||
			(b.r6.c1 == p && b.r5.c2 == p && b.r4.c3 == p && b.r3.c4 == p) ||
			(b.r6.c2 == p && b.r5.c3 == p && b.r4.c4 == p && b.r3.c5 == p) ||
			(b.r6.c3 == p && b.r5.c4 == p && b.r4.c5 == p && b.r3.c6 == p) ||
			(b.r6.c4 == p && b.r5.c5 == p && b.r4.c6 == p && b.r3.c7 == p) ||
			(b.r6.c5 == p && b.r5.c6 == p && b.r4.c7 == p && b.r3.c8 == p) ||
			(b.r6.c6 == p && b.r5.c7 == p && b.r4.c8 == p && b.r3.c9 == p) ||
			(b.r7.c0 == p && b.r6.c1 == p && b.r5.c2 == p && b.r4.c3 == p) ||
			(b.r7.c1 == p && b.r6.c2 == p && b.r5.c3 == p && b.r4.c4 == p) ||
			(b.r7.c2 == p && b.r6.c3 == p && b.r5.c4 == p && b.r4.c5 == p) ||
			(b.r7.c3 == p && b.r6.c4 == p && b.r5.c5 == p && b.r4.c6 == p) ||
			(b.r7.c4 == p && b.r6.c5 == p && b.r5.c6 == p && b.r4.c7 == p) ||
			(b.r7.c5 == p && b.r6.c6 == p && b.r5.c7 == p && b.r4.c8 == p) ||
			(b.r7.c6 == p && b.r6.c7 == p && b.r5.c8 == p && b.r4.c9 == p) ||
			(b.r8.c0 == p && b.r7.c1 == p && b.r6.c2 == p && b.r5.c3 == p) ||
			(b.r8.c1 == p && b.r7.c2 == p && b.r6.c3 == p && b.r5.c4 == p) ||
			(b.r8.c2 == p && b.r7.c3 == p && b.r6.c4 == p && b.r5.c5 == p) ||
			(b.r8.c3 == p && b.r7.c4 == p && b.r6.c5 == p && b.r5.c6 == p) ||
			(b.r8.c4 == p && b.r7.c5 == p && b.r6.c6 == p && b.r5.c7 == p) ||
			(b.r8.c5 == p && b.r7.c6 == p && b.r6.c7 == p && b.r5.c8 == p) ||
			(b.r8.c6 == p && b.r7.c7 == p && b.r6.c8 == p && b.r5.c9 == p) ||
			(b.r9.c0 == p && b.r8.c1 == p && b.r7.c2 == p && b.r6.c3 == p) ||
			(b.r9.c1 == p && b.r8.c2 == p && b.r7.c3 == p && b.r6.c4 == p) ||
			(b.r9.c2 == p && b.r8.c3 == p && b.r7.c4 == p && b.r6.c5 == p) ||
			(b.r9.c3 == p && b.r8.c4 == p && b.r7.c5 == p && b.r6.c6 == p) ||
			(b.r9.c4 == p && b.r8.c5 == p && b.r7.c6 == p && b.r6.c7 == p) ||
			(b.r9.c5 == p && b.r8.c6 == p && b.r7.c7 == p && b.r6.c8 == p) ||
			(b.r9.c6 == p && b.r8.c7 == p && b.r7.c8 == p && b.r6.c9 == p) ||
			(b.r0.c0 == p && b.r1.c1 == p && b.r2.c2 == p && b.r3.c3 == p) ||
			(b.r0.c1 == p && b.r1.c2 == p && b.r2.c3 == p && b.r3.c4 == p) ||
			(b.r0.c2 == p && b.r1.c3 == p && b.r2.c4 == p && b.r3.c5 == p) ||
			(b.r0.c3 == p && b.r1.c4 == p && b.r2.c5 == p && b.r3.c6 == p) ||
			(b.r0.c4 == p && b.r1.c5 == p && b.r2.c6 == p && b.r3.c7 == p) ||
			(b.r0.c5 == p && b.r1.c6 == p && b.r2.c7 == p && b.r3.c8 == p) ||
			(b.r0.c6 == p && b.r1.c7 == p && b.r2.c8 == p && b.r3.c9 == p) ||
			(b.r1.c0 == p && b.r2.c1 == p && b.r3.c2 == p && b.r4.c3 == p) ||
			(b.r1.c1 == p && b.r2.c2 == p && b.r3.c3 == p && b.r4.c4 == p) ||
			(b.r1.c2 == p && b.r2.c3 == p && b.r3.c4 == p && b.r4.c5 == p) ||
			(b.r1.c3 == p && b.r2.c4 == p && b.r3.c5 == p && b.r4.c6 == p) ||
			(b.r1.c4 == p && b.r2.c5 == p && b.r3.c6 == p && b.r4.c7 == p) ||
			(b.r1.c5 == p && b.r2.c6 == p && b.r3.c7 == p && b.r4.c8 == p) ||
			(b.r1.c6 == p && b.r2.c7 == p && b.r3.c8 == p && b.r4.c9 == p) ||
			(b.r2.c0 == p && b.r3.c1 == p && b.r4.c2 == p && b.r5.c3 == p) ||
			(b.r2.c1 == p && b.r3.c2 == p && b.r4.c3 == p && b.r5.c4 == p) ||
			(b.r2.c2 == p && b.r3.c3 == p && b.r4.c4 == p && b.r5.c5 == p) ||
			(b.r2.c3 == p && b.r3.c4 == p && b.r4.c5 == p && b.r5.c6 == p) ||
			(b.r2.c4 == p && b.r3.c5 == p && b.r4.c6 == p && b.r5.c7 == p) ||
			(b.r2.c5 == p && b.r3.c6 == p && b.r4.c7 == p && b.r5.c8 == p) ||
			(b.r2.c6 == p && b.r3.c7 == p && b.r4.c8 == p && b.r5.c9 == p) ||
			(b.r3.c0 == p && b.r4.c1 == p && b.r5.c2 == p && b.r6.c3 == p) ||
			(b.r3.c1 == p && b.r4.c2 == p && b.r5.c3 == p && b.r6.c4 == p) ||
			(b.r3.c2 == p && b.r4.c3 == p && b.r5.c4 == p && b.r6.c5 == p) ||
			(b.r3.c3 == p && b.r4.c4 == p && b.r5.c5 == p && b.r6.c6 == p) ||
			(b.r3.c4 == p && b.r4.c5 == p && b.r5.c6 == p && b.r6.c7 == p) ||
			(b.r3.c5 == p && b.r4.c6 == p && b.r5.c7 == p && b.r6.c8 == p) ||
			(b.r3.c6 == p && b.r4.c7 == p && b.r5.c8 == p && b.r6.c9 == p) ||
			(b.r4.c0 == p && b.r5.c1 == p && b.r6.c2 == p && b.r7.c3 == p) ||
			(b.r4.c1 == p && b.r5.c2 == p && b.r6.c3 == p && b.r7.c4 == p) ||
			(b.r4.c2 == p && b.r5.c3 == p && b.r6.c4 == p && b.r7.c5 == p) ||
			(b.r4.c3 == p && b.r5.c4 == p && b.r6.c5 == p && b.r7.c6 == p) ||
			(b.r4.c4 == p && b.r5.c5 == p && b.r6.c6 == p && b.r7.c7 == p) ||
			(b.r4.c5 == p && b.r5.c6 == p && b.r6.c7 == p && b.r7.c8 == p) ||
			(b.r4.c6 == p && b.r5.c7 == p && b.r6.c8 == p && b.r7.c9 == p) ||
			(b.r5.c0 == p && b.r6.c1 == p && b.r7.c2 == p && b.r8.c3 == p) ||
			(b.r5.c1 == p && b.r6.c2 == p && b.r7.c3 == p && b.r8.c4 == p) ||
			(b.r5.c2 == p && b.r6.c3 == p && b.r7.c4 == p && b.r8.c5 == p) ||
			(b.r5.c3 == p && b.r6.c4 == p && b.r7.c5 == p && b.r8.c6 == p) ||
			(b.r5.c4 == p && b.r6.c5 == p && b.r7.c6 == p && b.r8.c7 == p) ||
			(b.r5.c5 == p && b.r6.c6 == p && b.r7.c7 == p && b.r8.c8 == p) ||
			(b.r5.c6 == p && b.r6.c7 == p && b.r7.c8 == p && b.r8.c9 == p) ||
			(b.r6.c0 == p && b.r7.c1 == p && b.r8.c2 == p && b.r9.c3 == p) ||
			(b.r6.c1 == p && b.r7.c2 == p && b.r8.c3 == p && b.r9.c4 == p) ||
			(b.r6.c2 == p && b.r7.c3 == p && b.r8.c4 == p && b.r9.c5 == p) ||
			(b.r6.c3 == p && b.r7.c4 == p && b.r8.c5 == p && b.r9.c6 == p) ||
			(b.r6.c4 == p && b.r7.c5 == p && b.r8.c6 == p && b.r9.c7 == p) ||
			(b.r6.c5 == p && b.r7.c6 == p && b.r8.c7 == p && b.r9.c8 == p) ||
			(b.r6.c6 == p && b.r7.c7 == p && b.r8.c8 == p && b.r9.c9 == p);
	}

	transition new(p1: address, p2: address) -> Game {
		let r: Row = Row {
			c0: 0u8,
			c1: 0u8,
			c2: 0u8,
			c3: 0u8,
			c4: 0u8,
			c5: 0u8,
			c6: 0u8,
			c7: 0u8,
			c8: 0u8,
			c9: 0u8,
		};

		let b: Board = Board {
			r0: r,
			r1: r,
			r2: r,
			r3: r,
			r4: r,
			r5: r,
			r6: r,
			r7: r,
			r8: r,
			r9: r,
		};

		return Game {
			owner: self.caller,
			player1: p1,
			player2: p2,
			board: b,
			won: 0u8,
		};
	}

	transition make_move(player: u8, y: u8, x: u8, game: Game) -> Game {
		assert(game.owner == self.caller);
		assert(player == 1u8 || player == 2u8);
		assert(game.won == 0u8);
		assert(0u8 <= y && y <= 9u8);
		assert(0u8 <= x && x <= 9u8);

		let r0c0: u8 = game.board.r0.c0;
		let r0c1: u8 = game.board.r0.c1;
		let r0c2: u8 = game.board.r0.c2;
		let r0c3: u8 = game.board.r0.c3;
		let r0c4: u8 = game.board.r0.c4;
		let r0c5: u8 = game.board.r0.c5;
		let r0c6: u8 = game.board.r0.c6;
		let r0c7: u8 = game.board.r0.c7;
		let r0c8: u8 = game.board.r0.c8;
		let r0c9: u8 = game.board.r0.c9;
		let r1c0: u8 = game.board.r1.c0;
		let r1c1: u8 = game.board.r1.c1;
		let r1c2: u8 = game.board.r1.c2;
		let r1c3: u8 = game.board.r1.c3;
		let r1c4: u8 = game.board.r1.c4;
		let r1c5: u8 = game.board.r1.c5;
		let r1c6: u8 = game.board.r1.c6;
		let r1c7: u8 = game.board.r1.c7;
		let r1c8: u8 = game.board.r1.c8;
		let r1c9: u8 = game.board.r1.c9;
		let r2c0: u8 = game.board.r2.c0;
		let r2c1: u8 = game.board.r2.c1;
		let r2c2: u8 = game.board.r2.c2;
		let r2c3: u8 = game.board.r2.c3;
		let r2c4: u8 = game.board.r2.c4;
		let r2c5: u8 = game.board.r2.c5;
		let r2c6: u8 = game.board.r2.c6;
		let r2c7: u8 = game.board.r2.c7;
		let r2c8: u8 = game.board.r2.c8;
		let r2c9: u8 = game.board.r2.c9;
		let r3c0: u8 = game.board.r3.c0;
		let r3c1: u8 = game.board.r3.c1;
		let r3c2: u8 = game.board.r3.c2;
		let r3c3: u8 = game.board.r3.c3;
		let r3c4: u8 = game.board.r3.c4;
		let r3c5: u8 = game.board.r3.c5;
		let r3c6: u8 = game.board.r3.c6;
		let r3c7: u8 = game.board.r3.c7;
		let r3c8: u8 = game.board.r3.c8;
		let r3c9: u8 = game.board.r3.c9;
		let r4c0: u8 = game.board.r4.c0;
		let r4c1: u8 = game.board.r4.c1;
		let r4c2: u8 = game.board.r4.c2;
		let r4c3: u8 = game.board.r4.c3;
		let r4c4: u8 = game.board.r4.c4;
		let r4c5: u8 = game.board.r4.c5;
		let r4c6: u8 = game.board.r4.c6;
		let r4c7: u8 = game.board.r4.c7;
		let r4c8: u8 = game.board.r4.c8;
		let r4c9: u8 = game.board.r4.c9;
		let r5c0: u8 = game.board.r5.c0;
		let r5c1: u8 = game.board.r5.c1;
		let r5c2: u8 = game.board.r5.c2;
		let r5c3: u8 = game.board.r5.c3;
		let r5c4: u8 = game.board.r5.c4;
		let r5c5: u8 = game.board.r5.c5;
		let r5c6: u8 = game.board.r5.c6;
		let r5c7: u8 = game.board.r5.c7;
		let r5c8: u8 = game.board.r5.c8;
		let r5c9: u8 = game.board.r5.c9;
		let r6c0: u8 = game.board.r6.c0;
		let r6c1: u8 = game.board.r6.c1;
		let r6c2: u8 = game.board.r6.c2;
		let r6c3: u8 = game.board.r6.c3;
		let r6c4: u8 = game.board.r6.c4;
		let r6c5: u8 = game.board.r6.c5;
		let r6c6: u8 = game.board.r6.c6;
		let r6c7: u8 = game.board.r6.c7;
		let r6c8: u8 = game.board.r6.c8;
		let r6c9: u8 = game.board.r6.c9;
		let r7c0: u8 = game.board.r7.c0;
		let r7c1: u8 = game.board.r7.c1;
		let r7c2: u8 = game.board.r7.c2;
		let r7c3: u8 = game.board.r7.c3;
		let r7c4: u8 = game.board.r7.c4;
		let r7c5: u8 = game.board.r7.c5;
		let r7c6: u8 = game.board.r7.c6;
		let r7c7: u8 = game.board.r7.c7;
		let r7c8: u8 = game.board.r7.c8;
		let r7c9: u8 = game.board.r7.c9;
		let r8c0: u8 = game.board.r8.c0;
		let r8c1: u8 = game.board.r8.c1;
		let r8c2: u8 = game.board.r8.c2;
		let r8c3: u8 = game.board.r8.c3;
		let r8c4: u8 = game.board.r8.c4;
		let r8c5: u8 = game.board.r8.c5;
		let r8c6: u8 = game.board.r8.c6;
		let r8c7: u8 = game.board.r8.c7;
		let r8c8: u8 = game.board.r8.c8;
		let r8c9: u8 = game.board.r8.c9;
		let r9c0: u8 = game.board.r9.c0;
		let r9c1: u8 = game.board.r9.c1;
		let r9c2: u8 = game.board.r9.c2;
		let r9c3: u8 = game.board.r9.c3;
		let r9c4: u8 = game.board.r9.c4;
		let r9c5: u8 = game.board.r9.c5;
		let r9c6: u8 = game.board.r9.c6;
		let r9c7: u8 = game.board.r9.c7;
		let r9c8: u8 = game.board.r9.c8;
		let r9c9: u8 = game.board.r9.c9;

		if y == 0u8 && x == 0u8 && r0c0 == 0u8 {
			r0c0 = player;
		} else if y == 0u8 && x == 1u8 && r0c1 == 0u8 {
			r0c1 = player;
		} else if y == 0u8 && x == 2u8 && r0c2 == 0u8 {
			r0c2 = player;
		} else if y == 0u8 && x == 3u8 && r0c3 == 0u8 {
			r0c3 = player;
		} else if y == 0u8 && x == 4u8 && r0c4 == 0u8 {
			r0c4 = player;
		} else if y == 0u8 && x == 5u8 && r0c5 == 0u8 {
			r0c5 = player;
		} else if y == 0u8 && x == 6u8 && r0c6 == 0u8 {
			r0c6 = player;
		} else if y == 0u8 && x == 7u8 && r0c7 == 0u8 {
			r0c7 = player;
		} else if y == 0u8 && x == 8u8 && r0c8 == 0u8 {
			r0c8 = player;
		} else if y == 0u8 && x == 9u8 && r0c9 == 0u8 {
			r0c9 = player;
		} else if y == 1u8 && x == 0u8 && r1c0 == 0u8 {
			r1c0 = player;
		} else if y == 1u8 && x == 1u8 && r1c1 == 0u8 {
			r1c1 = player;
		} else if y == 1u8 && x == 2u8 && r1c2 == 0u8 {
			r1c2 = player;
		} else if y == 1u8 && x == 3u8 && r1c3 == 0u8 {
			r1c3 = player;
		} else if y == 1u8 && x == 4u8 && r1c4 == 0u8 {
			r1c4 = player;
		} else if y == 1u8 && x == 5u8 && r1c5 == 0u8 {
			r1c5 = player;
		} else if y == 1u8 && x == 6u8 && r1c6 == 0u8 {
			r1c6 = player;
		} else if y == 1u8 && x == 7u8 && r1c7 == 0u8 {
			r1c7 = player;
		} else if y == 1u8 && x == 8u8 && r1c8 == 0u8 {
			r1c8 = player;
		} else if y == 1u8 && x == 9u8 && r1c9 == 0u8 {
			r1c9 = player;
		} else if y == 2u8 && x == 0u8 && r2c0 == 0u8 {
			r2c0 = player;
		} else if y == 2u8 && x == 1u8 && r2c1 == 0u8 {
			r2c1 = player;
		} else if y == 2u8 && x == 2u8 && r2c2 == 0u8 {
			r2c2 = player;
		} else if y == 2u8 && x == 3u8 && r2c3 == 0u8 {
			r2c3 = player;
		} else if y == 2u8 && x == 4u8 && r2c4 == 0u8 {
			r2c4 = player;
		} else if y == 2u8 && x == 5u8 && r2c5 == 0u8 {
			r2c5 = player;
		} else if y == 2u8 && x == 6u8 && r2c6 == 0u8 {
			r2c6 = player;
		} else if y == 2u8 && x == 7u8 && r2c7 == 0u8 {
			r2c7 = player;
		} else if y == 2u8 && x == 8u8 && r2c8 == 0u8 {
			r2c8 = player;
		} else if y == 2u8 && x == 9u8 && r2c9 == 0u8 {
			r2c9 = player;
		} else if y == 3u8 && x == 0u8 && r3c0 == 0u8 {
			r3c0 = player;
		} else if y == 3u8 && x == 1u8 && r3c1 == 0u8 {
			r3c1 = player;
		} else if y == 3u8 && x == 2u8 && r3c2 == 0u8 {
			r3c2 = player;
		} else if y == 3u8 && x == 3u8 && r3c3 == 0u8 {
			r3c3 = player;
		} else if y == 3u8 && x == 4u8 && r3c4 == 0u8 {
			r3c4 = player;
		} else if y == 3u8 && x == 5u8 && r3c5 == 0u8 {
			r3c5 = player;
		} else if y == 3u8 && x == 6u8 && r3c6 == 0u8 {
			r3c6 = player;
		} else if y == 3u8 && x == 7u8 && r3c7 == 0u8 {
			r3c7 = player;
		} else if y == 3u8 && x == 8u8 && r3c8 == 0u8 {
			r3c8 = player;
		} else if y == 3u8 && x == 9u8 && r3c9 == 0u8 {
			r3c9 = player;
		} else if y == 4u8 && x == 0u8 && r4c0 == 0u8 {
			r4c0 = player;
		} else if y == 4u8 && x == 1u8 && r4c1 == 0u8 {
			r4c1 = player;
		} else if y == 4u8 && x == 2u8 && r4c2 == 0u8 {
			r4c2 = player;
		} else if y == 4u8 && x == 3u8 && r4c3 == 0u8 {
			r4c3 = player;
		} else if y == 4u8 && x == 4u8 && r4c4 == 0u8 {
			r4c4 = player;
		} else if y == 4u8 && x == 5u8 && r4c5 == 0u8 {
			r4c5 = player;
		} else if y == 4u8 && x == 6u8 && r4c6 == 0u8 {
			r4c6 = player;
		} else if y == 4u8 && x == 7u8 && r4c7 == 0u8 {
			r4c7 = player;
		} else if y == 4u8 && x == 8u8 && r4c8 == 0u8 {
			r4c8 = player;
		} else if y == 4u8 && x == 9u8 && r4c9 == 0u8 {
			r4c9 = player;
		} else if y == 5u8 && x == 0u8 && r5c0 == 0u8 {
			r5c0 = player;
		} else if y == 5u8 && x == 1u8 && r5c1 == 0u8 {
			r5c1 = player;
		} else if y == 5u8 && x == 2u8 && r5c2 == 0u8 {
			r5c2 = player;
		} else if y == 5u8 && x == 3u8 && r5c3 == 0u8 {
			r5c3 = player;
		} else if y == 5u8 && x == 4u8 && r5c4 == 0u8 {
			r5c4 = player;
		} else if y == 5u8 && x == 5u8 && r5c5 == 0u8 {
			r5c5 = player;
		} else if y == 5u8 && x == 6u8 && r5c6 == 0u8 {
			r5c6 = player;
		} else if y == 5u8 && x == 7u8 && r5c7 == 0u8 {
			r5c7 = player;
		} else if y == 5u8 && x == 8u8 && r5c8 == 0u8 {
			r5c8 = player;
		} else if y == 5u8 && x == 9u8 && r5c9 == 0u8 {
			r5c9 = player;
		} else if y == 6u8 && x == 0u8 && r6c0 == 0u8 {
			r6c0 = player;
		} else if y == 6u8 && x == 1u8 && r6c1 == 0u8 {
			r6c1 = player;
		} else if y == 6u8 && x == 2u8 && r6c2 == 0u8 {
			r6c2 = player;
		} else if y == 6u8 && x == 3u8 && r6c3 == 0u8 {
			r6c3 = player;
		} else if y == 6u8 && x == 4u8 && r6c4 == 0u8 {
			r6c4 = player;
		} else if y == 6u8 && x == 5u8 && r6c5 == 0u8 {
			r6c5 = player;
		} else if y == 6u8 && x == 6u8 && r6c6 == 0u8 {
			r6c6 = player;
		} else if y == 6u8 && x == 7u8 && r6c7 == 0u8 {
			r6c7 = player;
		} else if y == 6u8 && x == 8u8 && r6c8 == 0u8 {
			r6c8 = player;
		} else if y == 6u8 && x == 9u8 && r6c9 == 0u8 {
			r6c9 = player;
		} else if y == 7u8 && x == 0u8 && r7c0 == 0u8 {
			r7c0 = player;
		} else if y == 7u8 && x == 1u8 && r7c1 == 0u8 {
			r7c1 = player;
		} else if y == 7u8 && x == 2u8 && r7c2 == 0u8 {
			r7c2 = player;
		} else if y == 7u8 && x == 3u8 && r7c3 == 0u8 {
			r7c3 = player;
		} else if y == 7u8 && x == 4u8 && r7c4 == 0u8 {
			r7c4 = player;
		} else if y == 7u8 && x == 5u8 && r7c5 == 0u8 {
			r7c5 = player;
		} else if y == 7u8 && x == 6u8 && r7c6 == 0u8 {
			r7c6 = player;
		} else if y == 7u8 && x == 7u8 && r7c7 == 0u8 {
			r7c7 = player;
		} else if y == 7u8 && x == 8u8 && r7c8 == 0u8 {
			r7c8 = player;
		} else if y == 7u8 && x == 9u8 && r7c9 == 0u8 {
			r7c9 = player;
		} else if y == 8u8 && x == 0u8 && r8c0 == 0u8 {
			r8c0 = player;
		} else if y == 8u8 && x == 1u8 && r8c1 == 0u8 {
			r8c1 = player;
		} else if y == 8u8 && x == 2u8 && r8c2 == 0u8 {
			r8c2 = player;
		} else if y == 8u8 && x == 3u8 && r8c3 == 0u8 {
			r8c3 = player;
		} else if y == 8u8 && x == 4u8 && r8c4 == 0u8 {
			r8c4 = player;
		} else if y == 8u8 && x == 5u8 && r8c5 == 0u8 {
			r8c5 = player;
		} else if y == 8u8 && x == 6u8 && r8c6 == 0u8 {
			r8c6 = player;
		} else if y == 8u8 && x == 7u8 && r8c7 == 0u8 {
			r8c7 = player;
		} else if y == 8u8 && x == 8u8 && r8c8 == 0u8 {
			r8c8 = player;
		} else if y == 8u8 && x == 9u8 && r8c9 == 0u8 {
			r8c9 = player;
		} else if y == 9u8 && x == 0u8 && r9c0 == 0u8 {
			r9c0 = player;
		} else if y == 9u8 && x == 1u8 && r9c1 == 0u8 {
			r9c1 = player;
		} else if y == 9u8 && x == 2u8 && r9c2 == 0u8 {
			r9c2 = player;
		} else if y == 9u8 && x == 3u8 && r9c3 == 0u8 {
			r9c3 = player;
		} else if y == 9u8 && x == 4u8 && r9c4 == 0u8 {
			r9c4 = player;
		} else if y == 9u8 && x == 5u8 && r9c5 == 0u8 {
			r9c5 = player;
		} else if y == 9u8 && x == 6u8 && r9c6 == 0u8 {
			r9c6 = player;
		} else if y == 9u8 && x == 7u8 && r9c7 == 0u8 {
			r9c7 = player;
		} else if y == 9u8 && x == 8u8 && r9c8 == 0u8 {
			r9c8 = player;
		} else if y == 9u8 && x == 9u8 && r9c9 == 0u8 {
			r9c9 = player;
		}
		let updated: Board = Board {
			r0: Row { c0: r0c0, c1: r0c1, c2: r0c2, c3: r0c3, c4: r0c4, c5: r0c5, c6: r0c6, c7: r0c7, c8: r0c8, c9: r0c9 },
			r1: Row { c0: r1c0, c1: r1c1, c2: r1c2, c3: r1c3, c4: r1c4, c5: r1c5, c6: r1c6, c7: r1c7, c8: r1c8, c9: r1c9 },
			r2: Row { c0: r2c0, c1: r2c1, c2: r2c2, c3: r2c3, c4: r2c4, c5: r2c5, c6: r2c6, c7: r2c7, c8: r2c8, c9: r2c9 },
			r3: Row { c0: r3c0, c1: r3c1, c2: r3c2, c3: r3c3, c4: r3c4, c5: r3c5, c6: r3c6, c7: r3c7, c8: r3c8, c9: r3c9 },
			r4: Row { c0: r4c0, c1: r4c1, c2: r4c2, c3: r4c3, c4: r4c4, c5: r4c5, c6: r4c6, c7: r4c7, c8: r4c8, c9: r4c9 },
			r5: Row { c0: r5c0, c1: r5c1, c2: r5c2, c3: r5c3, c4: r5c4, c5: r5c5, c6: r5c6, c7: r5c7, c8: r5c8, c9: r5c9 },
			r6: Row { c0: r6c0, c1: r6c1, c2: r6c2, c3: r6c3, c4: r6c4, c5: r6c5, c6: r6c6, c7: r6c7, c8: r6c8, c9: r6c9 },
			r7: Row { c0: r7c0, c1: r7c1, c2: r7c2, c3: r7c3, c4: r7c4, c5: r7c5, c6: r7c6, c7: r7c7, c8: r7c8, c9: r7c9 },
			r8: Row { c0: r8c0, c1: r8c1, c2: r8c2, c3: r8c3, c4: r8c4, c5: r8c5, c6: r8c6, c7: r8c7, c8: r8c8, c9: r8c9 },
			r9: Row { c0: r9c0, c1: r9c1, c2: r9c2, c3: r9c3, c4: r9c4, c5: r9c5, c6: r9c6, c7: r9c7, c8: r9c8, c9: r9c9 },
		};
		let won: u8 = 0u8;
		if check_win(updated, 1u8) {
			won = 1u8;
		} else if check_win(updated, 2u8) {
			won = 2u8;
		}
		return Game {
			owner: self.caller,
			player1: game.player1,
			player2: game.player2,
			board: updated,
			won: won,
		};
	}
}
