def caesar_cipher(string, shift)
    shifted_string = ""

    string.each_char { |char| 
        if char.ord >= 65 && char.ord <= 90 || char.ord >=97 && char.ord <= 122
            new_ord = char.ord + shift
            if new_ord > 90 && new_ord < 97 || new_ord > 122
                new_ord -= 26
            end
            shifted_string += new_ord.chr
        else
            shifted_string += char
        end
    }

    shifted_string
end
