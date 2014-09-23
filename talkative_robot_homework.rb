puts "What's your name?"
user_name = gets.chomp.capitalize

puts "What's your age?"
user_age = gets.chomp.to_i
jamaal_charles_age = 28

if user_age > jamaal_charles_age
	puts "You're older than Jamaal Charles!  He's only #{jamaal_charles_age}!"
elsif user_age == jamaal_charles_age
	puts "You're the same age as Jamaal Charles!"
elsif user_age < 1
	puts "Please put a number greater than 0!"
else user_age < jamaal_charles_age 
	puts "You're younger than Jamaal Charles!"
end

puts "Hi #{user_name} who is #{user_age}!"

first_initial = user_name.chars.first

puts "Do you mind if I call you #{first_initial}?"
user_answer = gets.chomp.downcase

puts "You answered #{user_answer}"
	if user_answer == "yes"
		puts "OK, I won't call you that..."
	else
		puts "Cool!!"
	end

years = 75 - user_age
puts "You will be 75 years old in #{years} years!"

first_name_in_caps = user_name.upcase!

puts "Hey #{first_name_in_caps}, where are you going!?"
user_going = gets.chomp

puts 'Yo "Dude", what\'s up?'
whats_up = gets.chomp

puts "Hey, tell me your whole name (first, middle, last) and I'll tell you the 2nd letter of your middle name!"
whole_user_name = gets.chomp
second_let_middle = whole_user_name.split[1][1].upcase
puts "Hmmm is your second letter of your middle name a #{second_let_middle}? I bet it is!"

