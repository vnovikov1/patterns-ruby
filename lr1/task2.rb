puts "Hello, #{ARGV[0]}"

puts "Your favorite language, #{ARGV[0]}?"
language = STDIN.gets.chomp

if language == "ruby"
    puts "you podliza"
else
    puts "Skoro budet ruby"
end

puts "#{ARGV[0]}, input command of OS?"
oscommand = STDIN.gets.chomp
system(oscommand)

puts "#{ARGV[0]}, input command of RUBY?"
rubycommand = STDIN.gets.chomp
system("ruby -e \"#{rubycommand}\"")