# Towers of Hanoi is a classic recursion puzzle:
# https://en.wikipedia.org/wiki/Tower_of_Hanoi
# (spoiler alert, that page contains a solution)
# You have a tower of disks of different sizes on one peg, and want to move all
# the disks from one peg to another without ever putting a disk on top of a
# smaller disk.  There are three pegs total -- the one the disks are currently
# on (the source peg), the one you want to move them to (the destination peg)
# and one additional peg.

# Here we're representing the three pegs as arrays, disks as numbers (indicating
# their sizes), and identifying which peg is the source, which is the
# destination, and which is the extra as their indices in the array.

# Note that we have an additional parameter -- current_level, which represents
# how deep of a pile we're currently interested in moving.
# Consider this a hint!

# The method should return the number of moves required to solve the puzzle
def towers_of_hanoi(towers, current_level, source, destination, other)
  # base case: zero disks, do nothing. return 0
  return 0 if current_level == 0
  # steps = (move current_level -1 disks from source to other)
  steps = towers_of_hanoi(towers, current_level - 1, source, other, destination)
  # move disk on top of source to destination, increment steps by 1
  towers[destination] << towers[source].pop
  steps += 1
  # add (move current_level - 1 disks from other to destination) to steps
  steps += towers_of_hanoi(
    towers, current_level - 1, other, destination, source)
  return steps
end

describe "towers_of_hanoi" do
  let(:towers) { [[7, 6, 5, 4, 3, 2, 1], [], []] }

  it "should move the top 3 if we give level 3" do
    expect(towers_of_hanoi(towers, 3, 0, 1, 2)).to eq 7
    expect(towers).to eq [[7, 6, 5, 4], [3, 2, 1], []]
  end

  it "should move the whole stack if we give level equal to the length" do
    expect(towers_of_hanoi(towers, towers[0].length, 0, 1, 2)).to eq 127
    expect(towers).to eq [[], [7, 6, 5, 4, 3, 2, 1], []]
  end
end
