require 'pry'

puts "What's your name?"
user_name = gets.chomp.capitalize

puts "What gender are you? (M, F)"
user_gender = gets.chomp.downcase

if user_gender == "m" 
	puts "Hey you're a guy!"
else 
	puts "Hey you're a girl!"
end


puts "What's your age?"
user_age = gets.chomp.to_i
jamaal_charles_age = 28

puts "Wow! You're old! Are you a great-great grandmother/father?" if user_age > 100
puts "Wow! You're young!" unless user_age > 15

case
	
when user_age > jamaal_charles_age
	puts "You're older than Jamaal Charles!  He's only #{jamaal_charles_age}!"
when user_age == jamaal_charles_age
	puts "You're the same age as Jamaal Charles!"
when user_age < 1
	puts "Please put a number greater than 0!"
else user_age < jamaal_charles_age 
	puts "You're younger than Jamaal Charles!"
end

(user_gender == "m") ? user_gender = "guy" : "girl"

years = 75 - user_age
older_years = user_age - 75

case 
	when user_age < 75
		puts "You will be 75 years old in #{years} years!"
	when user_age == 75
		puts "You're 75!"
	when user_age > 75
		puts "You'll be 75 in #{older_years} years!"
	else
		puts "Please put a put a positive number!"
end

puts "Hey #{user_name}, you're a #{user_gender} who is #{user_age} old!"

puts "Hi #{user_name} who is #{user_age}!"

first_initial = user_name.chars.first

puts "Do you mind if I call you #{first_initial}?"
user_answer = gets.chomp.downcase

# puts "You answered #{user_answer}"
# 	if user_answer == "yes"
# 		puts "OK, I won't call you that..."
# 	else
# 		puts "Cool!!"
# 	end

puts (user_answer == "yes") ? "OK, I won't call you that..." : "Cool!"
		

first_name_in_caps = user_name.upcase!

puts "Hey #{first_name_in_caps}, where are you going!?"
user_going = gets.chomp

puts user_going == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."

puts 'Yo "Dude", what\'s up?'
whats_up = gets.chomp

puts "Hey, tell me your whole name (first, middle, last) and I'll tell you the 2nd letter of your middle name!"
whole_user_name = gets.chomp
second_let_middle = whole_user_name.split(" ")[1][1].upcase

puts "Hmmm is your second letter of your middle name a #{second_let_middle}? I bet it is!"

