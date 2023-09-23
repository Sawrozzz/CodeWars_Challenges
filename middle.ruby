def middle_character(word)
    length = word.length
  
    if length.odd?
      middle_index = length / 2
      return word[middle_index]
    else
      middle_index = length / 2 - 1
      return word[middle_index..middle_index + 1]
    end
  end

  word1 = "abckshdjfkjhsad"
  word2 = "abcdkjshdf"
  
  result1 = middle_character(word1)
  result2 = middle_character(word2)
  
  puts result1  
  puts result2  
  