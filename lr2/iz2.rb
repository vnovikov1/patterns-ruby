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

    for item in arr
        if item >= max
            max = item
        end
    end

    flag = FALSE
    count = -1

    for index in 0...arr.size
        if arr[index] == max
            count = -1
            flag = FALSE
            saveindex = index
            flag = TRUE
        end

        if flag == TRUE
            count += 1
        end
    end

    return count
end

print method1
#arr 1 2 3 4 1 1 4 1 1 1 1