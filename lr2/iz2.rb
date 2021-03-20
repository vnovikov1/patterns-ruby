def input(amount)
    amount = amount.to_i
    arr = Array.new

    for item in 1..amount
        item = STDIN.gets.chomp
        arr.push(item)
    end

    return arr.map(&:to_i)
end

def iff(path)
    file = File.new(path, "r:UTF-8")
    content = file.read
    return content.split.map(&:to_i)
end

def method1
    path = 'task4text.txt'
    arr = iff(path)
    max = arr[0]

    for i in 0...arr.size
        if arr[i] >= max
            max = arr[i]
            index = i
        end
    end

    return arr.size - index - 1
end

print method1
#arr 1 2 3 4 1 1 4 1 1 1 1