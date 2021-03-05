def sum(num)
    sum = 0
    while num != 0 do
        a = num % 10
        sum += a
        num /= 10
    end
    return sum
end

def proizv(num)
    pr = 1 
    while num != 0 do
        a = num % 10
        pr *= a
        a = num /= 10
    end
    return pr
end

def min(num)
    min = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a < min then 
            min = a
        end
        num /= 10
    end
    return min
end

def max(num)
    max = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a > max then 
            max = a
        end
        num /= 10
    end
    return max
end

num = gets.chomp.to_i

puts sum(num)
puts proizv(num)
puts min(num)
puts max(num)