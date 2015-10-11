def nearest_larger(arr, idx)
    left = idx - 1
    right = idx + 1
    found_greater_left = false
    found_greater_right = false
    while left >= 0
        if arr[left] > arr[idx]
            found_greater_left = true
            left_ans = left
        end
        left -= 1
    end
    
    while right < arr.length
        if arr[right] > arr[idx]
            found_greater_right = true
            right_ans
            
        end
        right =+ 1
    end
    
    if found_greater_right && found_greater_left
        puts "got it"
        return (idx - left_and > right_ans - idx) ? right : left
    elsif found_greater_left
        return left_ans
    elsif found_greater_right
        return right_ans
    else 
        return nil
    end
end
