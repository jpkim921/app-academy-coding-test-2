def change_coins(coin_array)
    #Takes a coin and returns the three values of new coins you're given
    new_coin_array = Array.new
    coin_array.each do |coin|
        if coin != 0
            new_coin_array.push(coin/2)
            new_coin_array.push(coin/3)
            new_coin_array.push(coin/4)
        else
            new_coin_array.push(coin)
        end
    end
    return new_coin_array
end

def wonky_coins(n)
    coin_array = [n]
    while true
        coin_array = change_coins(coin_array)
        if coin_array == Array.new(coin_array.length, 0) #Check if all the coins are zero yet
            return coin_array.length
        end
    end
end
