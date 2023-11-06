#!/bin/bash

if ! command -v leo &> /dev/null
then
	echo "leo is not installed."
	exit
fi

leo run new aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag

leo run make_move 1u8 0u8 0u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    }
  },
  won: 0u8.private,
  _nonce: 5436809568666470405734306737254214018341839082526463681593690594583281214687group.public
}"

echo "Should have r0.c0: 1u8"

leo run make_move 2u8 8u8 8u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    }
  },
  won: 0u8.private,
  _nonce: 3984536268484892833936673365440107493968842749286455943696767939882890599729group.public
}"

echo "Should have r8.c8: 2u8"

leo run make_move 1u8 1u8 1u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 2u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    }
  },
  won: 0u8.private,
  _nonce: 6679137830041417885537103919471460331840647521849095563488417572401712601237group.public
}"

echo "Should have r1.c1: 1u8"

leo run make_move 2u8 9u8 9u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 1u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 2u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    }
  },
  won: 0u8.private,
  _nonce: 5977860655805243789972494292124432277579672754253772112287051742147236643578group.public
}"

echo "Should have r9.c9: 2u8"

leo run make_move 1u8 2u8 2u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 1u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 2u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 2u8.private
    }
  },
  won: 0u8.private,
  _nonce: 5233526693972888319952337077320954736458758980971087064804191078829551695438group.public
}"

echo "Should have r2.c2: 1u8"

leo run make_move 2u8 5u8 5u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 1u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 1u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 2u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 2u8.private
    }
  },
  won: 0u8.private,
  _nonce: 2727568298948358613465193284186502431218009934182179001947571114317024771320group.public
}"

echo "Should have r5.c5: 2u8"

leo run make_move 1u8 3u8 3u8 "{
  owner: aleo1wv72pdtls90ynnwl780q6p0pcfv54t0wkugrzz5n6fvddex9yyyqfneh04.private,
  player1: aleo132ngrtqmlysat7d65nfjr3k56x6ww87gyyhavehplncyt9ytf58qatyxgn.private,
  player2: aleo1wdn3n3ktzr5hqfsfm4yqkkcxukukhpamcel6nm3se4kt77yhnvrqshhyag.private,
  board: {
    r0: {
      c0: 1u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r1: {
      c0: 0u8.private,
      c1: 1u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r2: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 1u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r3: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r4: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r5: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 2u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r6: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r7: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 0u8.private
    },
    r8: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 2u8.private,
      c9: 0u8.private
    },
    r9: {
      c0: 0u8.private,
      c1: 0u8.private,
      c2: 0u8.private,
      c3: 0u8.private,
      c4: 0u8.private,
      c5: 0u8.private,
      c6: 0u8.private,
      c7: 0u8.private,
      c8: 0u8.private,
      c9: 2u8.private
    }
  },
  won: 0u8.private,
  _nonce: 4414095910869239463922111807186853454257948443842221849942643899787956777332group.public
}"

echo "Should have r3.c3: 1u8"
echo "Should have won: 1u8"
