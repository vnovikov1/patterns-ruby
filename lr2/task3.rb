def input(amount)
    amount = amount.to_i
    arr = Array.new

    puts "Введите список из #{amount} элементов: "
    for item in 1..amount
        item = STDIN.gets.chomp
        arr.append(item)
    end

    return arr
end

print input(ARGV[0])
