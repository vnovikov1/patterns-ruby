def min(arr)
    return arr.min
end

def max(arr)
    return arr.max
end

def sum(arr)
    sum = 0
    arr.each { |item| sum += item }
    return sum
end

def composition(arr)
    pr = 1
    arr.each { |item| pr *= item }
    return pr
end

print 'Введите список: '
arr = gets.chomp.split
arr = arr.map(&:to_i)
print arr 
puts

puts min(arr)
puts max(arr)
puts sum(arr)
puts composition(arr)