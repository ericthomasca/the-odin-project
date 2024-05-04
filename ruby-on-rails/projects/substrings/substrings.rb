def substrings(string, dictionary)
  string_array = string.downcase.split(" ")
  hash = Hash.new(0)
  
  string_array.each do |word| 
    dictionary.each do |item|
      if word.include? item
        hash[item] += 1
      end
    end
  end

  hash
end
