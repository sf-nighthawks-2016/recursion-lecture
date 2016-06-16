# reverse_string("hello") => "olleh"
# to use pry, do the following:
# gem install pry-byebug
require 'pry'

def reverse_string(str)
  binding.pry
  return str if str.length <= 1
  # take the first letter off
  first_letter = str[0]
  # reverse the rest
  reversed = reverse_string(str[1..str.length])
  # put the first letter on the end
  return reversed + first_letter
end

puts reverse_string("cat")
# puts reverse_string("h")

describe "#reverse_string" do
  it "should leave a single-character string as-is" do
    expect(reverse_string("a")).to eq "a"
  end

  it "should swap the characters in a 2 letter string" do
    expect(reverse_string("ay")).to eq "ya"
  end

  it "should be able to handle a longer string (even length)" do
    expect(reverse_string("characters")).to eq "sretcarahc"
  end

  it "should be able to handle a longer string (odd length)" do
    expect(reverse_string("character")).to eq "retcarahc"
  end
end
