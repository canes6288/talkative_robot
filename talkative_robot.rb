puts "Test message"
puts "We're running this in the Terminal"

puts "What is your name?"
user_name = gets.chomp.capitalize

puts "Hi #{user_name}!!!"

puts "How are you doing?"
mood = gets.chomp.downcase!


puts "Glad to hear you're #{mood}!"