def morse_encode_word(str)
    code = {"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", 
    "e"=> "." , "f"=> "..-.", "g"=> "--.", "h"=> "...." ,
    "i"=> "..", "j"=> ".---", "k"=> "-.-", "l"=> ".-..","m"=> "--","n"=> "-.",
    "o"=> "---", "p"=> ".--." , "q" => "--.-" ,
    "r" => ".-.","s" => "..." ,"t" => "-", "u"=> "..-", "v"=> "...-" , 
    "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--.."
    }
    
    encoded = Array.new
    str = str.split("")
    str.each do |letter|
        encoded.push(code[letter])
    end
    return encoded.join(" ")
end

def morse_encode(str)
    str = str.split(" ")
    encoded = Array.new
    str.each do |word|
        encoded.push(morse_encode_word(word))
    end
    return encoded.join("  ")
end
