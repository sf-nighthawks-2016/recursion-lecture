def divide(a, b)
  return a/b
end

def stuff(cat, dog, x)
  x = divide(23, x)
  cat.downcase!
  return dog.upcase
end

cat = "Babbage"
dog = "Helo"
puts stuff(cat, dog, 13)
puts cat
puts dog
puts stuff(cat, dog, 0)
