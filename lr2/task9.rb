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