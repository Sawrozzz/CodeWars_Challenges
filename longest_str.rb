def longest(a1, a2)
  a3 = (a1+a2).chars.uniq
  sorted_characters = a3.sort
    result = sorted_characters.join
  return result
end

a1 = "ddfgtlkklsjdfkjaskdf"
a2 = "tyuuughejshdfjhsdf"
puts longest(a1,a2)
