def bubble_sort(arr)
    no_swaps = true
    while true
        i = 0
        no_swaps = true
        while i + 1< arr.length
            if arr[i+1] < arr[i]
                val = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = val
                no_swaps = false
            end
            i += 1
        end
        break if no_swaps  
    end
    return arr
end
