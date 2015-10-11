def no_repeat?(year)
    year = year.to_s.split("")
    return year == year.uniq
end

def no_repeats(year_start, year_end)
    i = year_start
    no_repeats_array = Array.new
    while i <= year_end
        no_repeats_array.push(i) if no_repeat?(i)
        i += 1
    end
    return no_repeats_array
end
