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

def method13
    path = 'task4text.txt'
    arr = iff(path)
    min = arr[0]

    for i in 0...arr.size
        if arr[i] <= min
            min = arr[i]
            index = i
        end
    end
    
    for i in 0...arr.size
        if i < index
            arr.push(arr[i])
        end
    end

    arr = arr.slice(index..arr.size)

    return arr
end

def method25
    path = 'task4text.txt'
    arr = iff(path)
    a = 2
    b = 6

    max = arr[0]
    
    for i in a..b
        if arr[i] > max
            max = arr[i]
        end
    end
    return max
end

def method37
    path = 'task4text.txt'
    arr = iff(path)

    k = 0
    for i in 1...arr.size
        if arr[i] < arr[i-1]
            k += 1 
            puts "index - #{i}"
        end
    end

    return k
end

def method49
    def isprime(n)
        if n % 2 == 0
            return n == 2
        end
        d = 3
        while d * d <= n && n % d != 0
            d += 2
        end
        return d * d > n
    end

    arr = gets.chomp.split.map(&:to_i)
    primeArr = []

    for item in arr
        for i in 2..item
            if item % i == 0 && isprime(i)
                primeArr.push(i)
            end
        end
    end

    return primeArr.uniq
end

print method25