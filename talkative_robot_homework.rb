require 'pry'


def user_gender_response(user)
	if user[:gender] == "m" 
		puts "Hey you're a guy!"
	else 
		puts "Hey you're a girl!"
	end
end


def jamaal_charles_age_comparison(user)
	jamaal_charles_age = 27

	case
		when user[:age] > jamaal_charles_age
			puts "You're older than Jamaal Charles!  He's only #{jamaal_charles_age}!"
		when user[:age] == jamaal_charles_age
			puts "You're the same age as Jamaal Charles!"
		when user[:age] < 1
			puts "Please put a number greater than 0!"
		else user[:age] < jamaal_charles_age 
			puts "You're younger than Jamaal Charles!"
	end
end



def age_75_comparison(user, years_under_75, years_over_75)
	case 
		when user[:age] < 75
			puts "You will be 75 years old in #{years_under_75} years!"
		when user[:age] == 75
			puts "You're 75!"
		when user[:age] > 75
			puts "You'll be 75 in #{years_over_75} years!"
		else
			puts "Please put a positive number!"
	end
end



def incorrect_response_loop(user)
	until user[:permission_response] == "yes" || user[:permission_response] == "no" do
		puts "Hey you didn't answer the question with Yes or No!  Do you mind if I call you #{user[:first_initial]}? (Yes, No)"
		user[:permission_response] = gets.chomp.downcase
	end
	return user[:permission_response]
end





#Now starting the grocery store exercise


def item_response(user)
	if user[:item_grabbed] == "yes"
		puts "OK let's cross #{user[:random_item]} off the list!"
		grocery_list.delete(user[:random_item])
	else
		puts "Well I left it on the list!"
	end
end






user = {}
puts "What's your name?"
user[:name] = gets.chomp.capitalize

puts "What gender are you? (M, F)"
user[:gender] = gets.chomp.downcase
user_gender_response(user)


puts "What's your age?"
user[:age] = gets.chomp.to_i
jamaal_charles_age_comparison(user)

puts "Wow! You're old! Are you a great-great grandmother/father?" if user[:age] > 100
puts "Wow! You're young!" unless user[:age] > 15


years_under_75 = 75 - user[:age]
years_over_75 = user[:age] - 75
age_75_comparison(user, years_under_75, years_over_75)


user[:gender_slang] = (user[:gender] == "m") ? ("guy") : ("girl")
puts "Hey #{user[:name]}, you're a #{user[:gender_slang]} who is #{user[:age]} old!"

user[:first_initial] = user[:name].chars.first
puts "Do you mind if I call you #{user[:first_initial]}? (Yes, No)"
user[:permission_response] = gets.chomp.downcase # Ask for it here


user[:permission_response] = incorrect_response_loop(user) # => will end up == "yes" or == "no"
puts (user[:permission_response] == "yes") ? "OK, I won't call you that..." : "Cool!"
		

user[:first_name_caps] = user[:name].upcase
puts "Hey #{user[:first_name_caps]}, where are you going!?"	
user[:destination] = gets.chomp

puts user[:destination] == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."


puts 'Yo "Dude", what\'s up?'
user[:whats_up] = gets.chomp

puts "Hey, tell me your whole name (first, middle, last) and I'll tell you the 2nd letter of your middle name!"
user[:full_name] = gets.chomp

user[:middle_name] = user[:full_name].split(" ")[1]
user[:middle_name_second_letter] = user[:middle_name].chars[1].upcase
puts "Hmmm is your second letter of your middle name a #{user[:middle_name_second_letter]}? I bet it is!"




grocery_list = ["eggs", "beer", "milk", "apples", "bacon"]

user[:random_item] = grocery_list.sample

puts "Did you grab the #{user[:random_item]}?"
user[:item_grabbed] = gets.chomp.downcase
item_response(user)


puts grocery_list

puts "Oh yeah! Don't forget the Activia!"
grocery_list << "activia"
puts grocery_list


