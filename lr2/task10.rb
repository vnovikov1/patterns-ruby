def date(str)
    print str.scan(/([0-2]\d|3[0-1]).(0[1-9]|1[0-2]|January|February|March|April|May|June|July|August|September|October|November|December).(\d{4})/).map{|e| e.join('.')}.join(" ")
end

date(gets.chomp)