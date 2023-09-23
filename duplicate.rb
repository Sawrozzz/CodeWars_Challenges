def unique(arr)
    unique_hash = {}  # Create a hash to store unique elements as keys
  
    arr.select do |item|
      unless unique_hash[item]
        unique_hash[item] = true
        true  # Include the item in the result
      end
    end
  end
  
  # Example usage:
  input_array = [52, 10, 52, 7, 10, 15]
  result_array = unique(input_array)
  puts result_array.inspect  # Output: [52, 10, 7, 15]
  