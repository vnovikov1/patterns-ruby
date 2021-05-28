def input 
    print "Введите строку: "
    str = gets.chomp
    return str
end

def russianSym(str)
    k = 0
    bytes = []
    str.each_byte {|symbol| bytes.append(symbol)}
    for item in bytes
        if item >= 128 && item <= 239
            k += 1
        end
    end
    return k
end

def is_palindrome(str)
    if str == str.reverse
        return TRUE
    end
end

def date(str)
    return str.scan(/([0-2]\d|3[0-1]).(0[1-9]|1[0-2]).(\d{4})/).map{|e| e.join('.')}.join(" ")
end

def main
    puts "Выберите задачу:"
    puts "1. - 9.1"
    puts "2. - 9.9"
    puts "3. - 9.18"

    incase = gets.chomp
    case incase
    when '1'
        puts "Количество русских символов - #{russianSym(input())}"
    when '2'
        if is_palindrome(input())
            puts "Строка - палиндром"
            else
                puts "Строка - не палиндром"
        end
    when '3'
        arr = date(input())
        if arr.empty? 
            puts "Нет дат"
        else
            puts arr
        end
    end
end

main()