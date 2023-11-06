print("program gomoku.aleo {")
print("\tstruct Row {")
for i in range(10):
    print(f"\t\tc{i}: u8,")
print("\t}")

print()

print("\tstruct Board {")
for i in range(10):
    print(f"\t\tr{i}: Row,")
print("\t}")

print()

print("\trecord Game {")
print("\t\towner: address,")
print("\t\tplayer1: address,")
print("\t\tplayer2: address,")
print("\t\tboard: Board,")
print("\t\twon: u8,")
print("\t}")

print()

print("\tfunction check_win(b: Board, p: u8) -> bool {")
print("\t\treturn")
for y in range(10):
    for x in range(7):
        t = []
        for i in range(4):
            t.append(f"b.r{y}.c{x+i} == p")
        print(f"\t\t\t({' && '.join(t)}) ||")

for y in range(7):
    for x in range(10):
        t = []
        for i in range(4):
            t.append(f"b.r{y+i}.c{x} == p")
        print(f"\t\t\t({' && '.join(t)}) ||")

for y in range(3, 10):
    for x in range(7):
        t = []
        for i in range(4):
            t.append(f"b.r{y-i}.c{x+i} == p")
        print(f"\t\t\t({' && '.join(t)}) ||")

for y in range(7):
    for x in range(7):
        t = []
        for i in range(4):
            t.append(f"b.r{y+i}.c{x+i} == p")
        if y == 6 and x == 6:
            print(f"\t\t\t({' && '.join(t)});")
        else:
            print(f"\t\t\t({' && '.join(t)}) ||")

print("\t}")

print()

print("\ttransition new(p1: address, p2: address) -> Game {")
print("\t\tlet r: Row = Row {")
for i in range(10):
    print(f"\t\t\tc{i}: 0u8,")
print("\t\t};")

print()

print("\t\tlet b: Board = Board {")
for i in range(10):
    print(f"\t\t\tr{i}: r,")
print("\t\t};")

print()

print("\t\treturn Game {")
print("\t\t\towner: self.caller,")
print("\t\t\tplayer1: p1,")
print("\t\t\tplayer2: p2,")
print("\t\t\tboard: b,")
print("\t\t\twon: 0u8,")
print("\t\t};")
print("\t}")

print()

print("\ttransition make_move(player: u8, y: u8, x: u8, game: Game) -> Game {")
print("\t\tassert(game.owner == self.caller);")
print("\t\tassert(player == 1u8 || player == 2u8);")
print("\t\tassert(game.won == 0u8);")
print("\t\tassert(0u8 <= y && y <= 9u8);")
print("\t\tassert(0u8 <= x && x <= 9u8);")
print()
for y in range(10):
    for x in range(10):
        print(f"\t\tlet r{y}c{x}: u8 = game.board.r{y}.c{x};")
print()
print("\t\t", sep="", end="")
for y in range(10):
    for x in range(10):
        print(f"if y == {y}u8 && x == {x}u8 && r{y}c{x} == 0u8 {{")
        print(f"\t\t\tr{y}c{x} = player;")
        if y == 9 and x == 9:
            print("\t\t}")
        else:
            print("\t\t} else ", sep="", end="")
print("\t\tlet updated: Board = Board {")
for y in range(10):
    print(f"\t\t\tr{y}: Row {{ ", sep="", end="")
    for x in range(10):
        print(f"c{x}: r{y}c{x} }},") if x == 9 else print(f"c{x}: r{y}c{x}, ", sep="", end="")
print("\t\t};")

print("\t\tlet won: u8 = 0u8;")
print("\t\tif check_win(updated, 1u8) {")
print("\t\t\twon = 1u8;")
print("\t\t} else if check_win(updated, 2u8) {")
print("\t\t\twon = 2u8;")
print("\t\t}")
print("\t\treturn Game {")
print("\t\t\towner: self.caller,")
print("\t\t\tplayer1: game.player1,")
print("\t\t\tplayer2: game.player2,")
print("\t\t\tboard: updated,")
print("\t\t\twon: won,")
print("\t\t};")
print("\t}")

print("}")
