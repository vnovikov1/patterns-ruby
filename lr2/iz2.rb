def input
    return gets.chomp.split().map(&:to_i)
end

def iff(path)
    file = File.new(path, "r:UTF-8")
    arr = file.read
    return arr.split.map(&:to_i)
end

def select_input()
    puts "Выберите способа задания массива"
    puts "1. - С клавиатуры"
    puts "2. - С файла"

    way = gets.chomp

    if way == "1"
        print "Введите элементы через пробел: "
        arr = input()
        return arr

    elsif way == "2"
        print "Введите путь до файла с массивом: "
        arr = iff(gets.chomp)
        return arr
    end
end

def method1(arr)
    max = arr[0]

    for i in 0...arr.size
        if arr[i] >= max
            max = arr[i]
            index = i
        end
    end

    return arr.size - index - 1
end

def method13(arr)
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

def method25(arr, a, b)
    max = arr[0]
    
    for i in a..b
        if arr[i] > max
            max = arr[i]
        end
    end
    
    return max
end

def method37(arr)
    k = 0
    
    print "Индексы - "
    for i in 1...arr.size
        if arr[i] < arr[i-1]
            k += 1 
            print "#{i} "
        end
    end
    puts

    return k
end

def method49(arr)
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

def main
    puts "Выберите задачу:"
    puts "1. - 6.1"
    puts "2. - 6.13"
    puts "3. - 6.25"
    puts "4. - 6.37"
    puts "5. - 6.49"

    input = gets.chomp
    case input
    when '1'
        puts "Количество элементов после последнего максимального - #{method1(select_input())}"
    when '2'
        puts "Результирующий массив - #{method13(select_input())}"
    when '3'
        print "Введите (a, b) через пробел: "
        a, b = gets.chomp.split.map(&:to_i)
        puts "Максимальный элемент из интервала a..b - #{method25(select_input(), a, b)}"
    when '4'
        puts "Количество чисел меньше левого соседа - #{method37(select_input())}"
    when '5'
        puts "Cписок всех положительных простых делителей - #{method49(select_input())}"
    end
end

main()