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

