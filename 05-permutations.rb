# abc
# acb
# bac
# bca
# cab
# cba


# print all possible permutations
def permutations(str, position=0)
end
# permutations("abc", 0)

# alternative approach
# def permutations(remaining_chars, so_far="")


require_relative "lib"

describe "permutations" do
  it "should work for 1 char" do
    expect{permutations("a")}.to output("a\n").to_stdout
  end

  it "should give all permutations of b" do
    expect{permutations("ab")}.to output("ab\nba\n").to_stdout
  end

  it "should give all permutations of abc" do
    printed = capture_stdout { permutations("abc") }

    expect(printed).to satisfy do |printed|
      printed.split("\n").sort == ["abc", "acb", "bac", "bca", "cab", "cba"]
    end
  end
end


# permutations("", "abc")
#   permutations("a", "bc")
#     permutations("ab", "c")
#       permutations("abc", "")
#     permutations("ac", "b")
#       permutations("acb", "")
#   permutations("b", "ac")
#     permutations("ba", "c")
#       permutations("bac", "")
#     permutations("bc", "a")
#       permutations("bca", "")
#   permutations("c", "ab")
#     permutations("ca", "b")
#       permutations("cab", "")
#     permutations("cb", "a")
#       permutations("cba", "")


