# reverse_string("hello") => "olleh"
require 'pry'

def reverse_string(str)
  binding.pry
  # if there's only one letter, return that letter
  return str if str.length == 1
  # take the last letter off
  last_letter = str[-1]
  # call ourselves on the first n-1 letters
  reversed = reverse_string(str.chop)
  # put the last letter on the front
  last_letter + reversed
end

puts reverse_string("cat")
# puts reverse_string("h")
