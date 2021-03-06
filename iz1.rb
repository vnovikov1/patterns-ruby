def sum_of_digits(num)
    sum = 0
    while num != 0 do
        a = num % 10
        sum += a
        num /= 10
    end
    return sum
end

def product_of_digits(num)
    pr = 1 
    while num != 0 do
        a = num % 10
        pr *= a
        a = num /= 10
    end
    return pr
end

def min(num)
    min = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a < min then 
            min = a
        end
        num /= 10
    end
    return min
end

def max(num)
    max = num % 10
    num /= 10
    while num != 0 do
        a = num % 10
        if a > max then 
            max = a
        end
        num /= 10
    end
    return max
end

def method1(num)
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

    sum = 0
    for i in 2..num
        if num % i == 0 && isprime(i)
            sum += i
        end
    end
    return sum
end

def method2(num)
    sum = 0 
    while num != 0 do
        a = num % 10
        if a % 2 != 0 && a > 3 then
            sum += a
        end
        num /= 10
    end
    return sum
end

def method3(num)
    pr = 1
    sum = sum_of_digits(num)

    for i in 2..num
        if num % i == 0 then 
            if sum_of_digits(i) < sum then
                pr *= i
            end
        end
    end
    return pr
end

def select_method(method, num)
    case method
    when 'sum'
        return "Сумма цифр числа #{num}: " + sum_of_digits(num).to_s
    when 'product'
        return "Произведение цифр числа #{num}: " + product_of_digits(num).to_s
    when 'min'
        return "Минимальная цифра в числе #{num}: " + min(num).to_s
    when 'max'
        return "Максимальная цифра в числе #{num}: " + max(num).to_s
    when 'method1'
        return "Сумма простых делителей числа #{num}: " + method1(num).to_s
    when 'method2'
        return "Количество нечетных цифр в числе #{num}, больших 3: " + method2(num).to_s
    when 'method3'
        return "Прозведение делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа #{num}: " + method3(num).to_s
    else
    "Такого метода не существует (#{method}) \nСписок доступных методов:\nsum - сумма цифр числа
product - произведение цифр числа
min - минимальная цифра в числе
max - максимальная цифра в числе
method1 - сумма простых делителей числа 
method2 - количество нечетных цифр в числе, больших 3
method3 - прозведение делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа"
    end
end

puts "Список доступных методов:\nsum - сумма цифр числа
product - произведение цифр числа
min - минимальная цифра в числе
max - максимальная цифра в числе
method1 - сумма простых делителей числа 
method2 - количество нечетных цифр в числе, больших 3
method3 - прозведение делителей числа, сумма цифр которых меньше, чем сумма цифр исходного числа" 
print 'Введите метод: '
method = gets.chomp
print 'Введите число: '
num = gets.chomp.to_i

puts select_method(method, num)