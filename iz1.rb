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

puts method1(6)

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

puts method2(3572)
