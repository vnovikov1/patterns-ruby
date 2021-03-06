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

def method3(num1)
    pr = 1
    
    def sum_of_digits(num)
        sum = 0
        while num != 0 do
            a = num % 10
            sum += a
            num /= 10
        end
        return sum
    end

    sum1 = sum_of_digits(num1)

    for i in 2..num1
        if num1 % i == 0 then 
            if sum_of_digits(i) < sum1 then
                pr *= i
            end
        end
    end
    return pr
end

puts method1(6)
puts method2(3572)
puts method3(150)