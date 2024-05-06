def caesar_cipher(string, shift)
  shifted_string = ''

  string.each_char do |char|
    if char.match?(/[a-zA-Z]/)
      base_ord = char.downcase == char ? 'a'.ord : 'A'.ord
      shifted_string += ((char.ord - base_ord + shift) % 26 + base_ord).chr
    else
      shifted_string += char
    end
  end

  shifted_string
end
