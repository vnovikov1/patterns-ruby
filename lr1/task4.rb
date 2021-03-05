puts 'command of OS?'
oscommand = gets.chomp
system(oscommand)

puts 'command of RUBY?'
rubycommand = gets.chomp
system("ruby -e \"#{rubycommand}\"")