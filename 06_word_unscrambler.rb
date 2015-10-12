def word_unscrambler(str, words)
    annagrams = Array.new
    words.each do |word|
        if str.split("").sort == word.split("").sort
            annagrams.push(word)
        end
    end
    return annagrams
end
