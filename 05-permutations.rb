# abc
# acb
# bac
# bca
# cab
# cba


# print all possible permutations

# Note: Sometimes you have to pass additional info down the call stack

# One possible approach
# def permutations(str, position)
# end
# permutations("abc", 0)

require 'pry'
# alternative approach
def permutations(so_far, rest)
  # binding.pry
  if rest.empty?
    puts so_far
  end
  for i in (0 .. (rest.length-1))
    # add the ith letter of rest to so_far
    new_so_far = so_far + rest[i]
    # remove the ith letter of rest
    temp_rest = rest.dup
    temp_rest[i] = ""
    # call ourselves on the new versions
    permutations(new_so_far, temp_rest)
  end
end
permutations("", "abc")
# permutations("a", "bc")
  # permutations("ab", "c")
    # permutations("abc", "")
  # permutations("ac", "b")
    # permutations("acb", "")
# permutations("b", "ac")
# permutations("c", "ab")
