def iff
    file = File.new("task4text.txt","r:UTF-8")
    content = file.read
    return content.split
end

print iff