def letter_count(str)
    frequency_hash = Hash.new
    str = str.delete(" ").split("")
    str.each do |letter|
        if frequency_hash.has_key?(letter)
            frequency_hash[letter] += 1
        else
            frequency_hash[letter] = 1
        end
    end
    return frequency_hash
end

#puts letter_count("mmmmyyyp").to_s
