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

def h()
    return "'1' как аргумент программы - прочитать файл из списка. В данном случае введите путь к файлу как
второй аргумент программы.
'2' как аргумент программы - ввести массив вручную при помощи метода. При выборе этого варианта, введите 
количество элементов вторым аргументом.\n"
end

def select_input(argv)
    if ARGV.size != 2
        puts "Аргументов программы должно быть 2"
        puts
        return h
    end
        
    if ARGV[0] == '1'
        begin
            return iff(ARGV[1])
        rescue
            puts "Путь к файлу не введен или некорректен"
            puts
            return h
        end

    elsif ARGV[0] == '2'
        if ARGV[1][/^\d+$/]
            puts "Введите #{ARGV[1]} элементов: "
            return input(ARGV[1])
        else
            puts "Второй аргумент не введен или не является целым числом"
            puts
            return h
        end
    end
end

def main()
    if ARGV.empty? or ARGV.include?('-h')
        puts h
    else
        print select_input(ARGV)
    end
end

main()
#path = task4text.txt