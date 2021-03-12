def input(amount)
    amount = amount.to_i
    arr = Array.new

    puts "Введите список из #{amount} элементов: "
    for item in 1..amount
        item = STDIN.gets.chomp
        arr.push(item)
    end

    print "Индекс элемента, после которого вставить новый элемент: "
    k = STDIN.gets.chomp.to_i
    print "Введите элемент: "
    item = STDIN.gets.chomp
    arr.insert(k, item)

    return arr
end

print input(ARGV[0])
