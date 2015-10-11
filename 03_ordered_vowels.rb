def ordered_vowel_word?(word)
    vowels = ["a", "e", "i", "o", "u"]
    word = word.split("")
    vowel_order = Array.new
    word.each do |letter|
        if vowels.include?(letter)
            vowel_order.push(vowels.index(letter))
        end
    end
    return vowel_order == vowel_order.sort
end
    
def ordered_vowel_words(str)
    ordered_words = Array.new
    str = str.split(" ")
    str.each do |word|
        ordered_words.push(word) if ordered_vowel_word?(word)
    end
    
    return ordered_words.join(" ")
end
