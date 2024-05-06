def substrings(string, dictionary)
  string_array = string.downcase.split(' ')
  hash = Hash.new(0)

  string_array.each do |word|
    dictionary.each do |item|
      hash[item] += 1 if word.include? item
    end
  end

  hash
end
