print 'Введите список: '
arr = gets.chomp.split
arr = arr.map(&:to_i)
print arr 
puts

def min(arr)
    min = arr[0]
    for item in arr
        if item < min
            min = item
        end
    end 
    return min
end

def max(arr)
    max = arr[0]
    for item in arr
        if item > max
            max = item
        end
    end 
    return max
end

def sum(arr)
    sum = 0
    for item in arr
        sum += item
    end
    return sum
end

def composition(arr)
    pr = 1
    for item in arr
        pr *= item
    end
    return pr
end

puts min(arr)
puts max(arr)
puts sum(arr)
puts composition(arr)