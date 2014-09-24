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

#(user_gender == "m") ? user_gender = "guy" : "girl"

user_greeting = (user_gender == "m" ? "guy" : "girl")

years_less_than_75 = 75 - user_age
years_older_than_75 = user_age - 75

case 
	when user_age < 75
		puts "You will be 75 years old in #{years_less_than_75} years!"
	when user_age == 75
		puts "You're 75!"
	when user_age > 75
		puts "You'll be 75 in #{years_older_than_75} years!"
	else
		puts "Please put a positive number!"
end

puts "Hey #{user_name}, you're a #{user_gender} who is #{user_age} old!"

first_initial = user_name.chars.first

puts "Do you mind if I call you #{first_initial}? (Yes, No)"
user_first_initial = gets.chomp.downcase

until user_first_initial == "yes" || user_first_initial == "no" do
		puts "Hey you didn't answer the question with Yes or No!  Do you mind if I call you #{first_initial}? (Yes, No)"
		user_first_initial = gets.chomp.downcase
end


puts (user_first_initial == "yes") ? "OK, I won't call you that..." : "Cool!"
		

first_name_in_caps = user_name.upcase

puts "Hey #{first_name_in_caps}, where are you going!?"
user_going = gets.chomp

puts user_going == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."

puts 'Yo "Dude", what\'s up?'
whats_up = gets.chomp

puts "Hey, tell me your whole name (first, middle, last) and I'll tell you the 2nd letter of your middle name!"
whole_user_name = gets.chomp
middle_name = whole_user_name.split(" ")[1]
middle_name_second_letter = middle_name.chars[1].upcase

puts "Hmmm is your second letter of your middle name a #{middle_name_second_letter}? I bet it is!"

