str = "2 3 a 1 5 5 3"
max = str[0]
for i in str.split
    if str[i][/^\d+$/]
        if str[i] > max
            max = str[i]
        end
    end
end

puts max