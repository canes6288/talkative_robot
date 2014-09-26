require 'pry'

def get_user_info(user)
	
	puts "What's your name?"
	user[:name] = gets.chomp.capitalize

	puts "What gender are you? (M, F)"
	user[:gender] = gets.chomp.downcase

	puts "What's your age?"
	user[:age] = gets.chomp.to_i
end

def question?(question, acceptable_replies)
	answer = ""
	while acceptable_replies.include?(answer) == false
		puts "#{question} (#{acceptable_replies.join(', ')})"
		answer = gets.chomp.downcase
	end
	answer
end

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
		else
			puts "You're younger than Jamaal Charles!"
	end
end

def compare_100_and_15_years(user)
	puts "Wow! You're old! Are you a great-great grandmother/father?" if user[:age] > 100
	puts "Wow! You're young!" unless user[:age] > 15
end



def age_75_comparison(user)

	case 

		when user[:age] < 75
			years_under_75 = 75 - user[:age]
			puts "You will be 75 years old in #{years_under_75} years!"
		when user[:age] == 75
			puts "You're 75!"
		when user[:age] > 75
			years_over_75 = user[:age] - 75
			puts "You'll be 75 in #{years_over_75} years!"
		else
			puts "Please put a positive number!"
	end
end

def define_gender_slang(user)
	user[:gender_slang] = (user[:gender] == "m") ? ("guy") : ("girl")
	puts "Hey #{user[:name]}, you're a #{user[:gender_slang]} who is #{user[:age]} old!"
end

def ask_permission_first_initial(user)
	user[:first_initial] = user[:name].chars.first
	answer = question?("Do you mind if I call you #{user[:first_initial]}?", ["yes", "no"])
	puts answer ? "OK, I won't call you that..." : "Cool!"
end

def ask_destination(user)
	user[:destination] = question?("Hey #{user[:first_name_caps]}, where are you going!?", ["home", "to wrestle a bear"])
	puts user[:destination] == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."
end


def ask_second_letter_middle_name(user)
	puts "Hey, tell me your whole name (first, middle, last) and I'll tell you the 2nd letter of your middle name!"
	user[:full_name] = gets.chomp

	user[:middle_name] = user[:full_name].split(" ")[1]
	user[:middle_name_second_letter] = user[:middle_name].chars[1].upcase
	puts "Hmmm is your second letter of your middle name a #{user[:middle_name_second_letter]}? I bet it is!"	
end



#Now starting the grocery store exercise


def ask_random_item(user)
	user[:random_item] = user[:grocery_list].sample
end



def delete_grabbed_item(user)
	
	answer = question?("Did you grab the #{user[:random_item]}?", ["yes", "no"])
	
	if answer == "yes" 
		user[:grocery_list].delete(user[:random_item])
		puts "OK let's cross #{user[:random_item]} off the list!" 
	else
		puts "Well I left it on the list"
	end
end

def create_grocery_list(user)
	item_number = 1
	while item_number < user[:grocery_list].count
		user[:grocery_list].map do |grocery| 
			puts "Item #{item_number} -- #{grocery}"
			item_number += 1
		end
	end
	
end


def add_activia(user)
	puts "Oh yeah! Don't forget the Activia!"
	user[:grocery_list] << "activia"
	puts "Grocery list: #{user[:grocery_list].join(", ")}"
	user[:activia_grocery_list] = user[:grocery_list]
end
ABCDEFG.....abcdefg


#### Starting lab 04
def pulling_pushing_groceries(user)

	move_grocery_list = IO.write("grocery_list.txt", user[:activia_grocery_list].join(", "))

	new_grocery_list = IO.read("grocery_list.txt").chomp.split(",")

	random_item = new_grocery_list.sample
	answer = question?("Did you grab the #{random_item}?", ["yes", "no"])

	if answer == "yes" 
		new_grocery_list.delete(random_item)
		puts "OK let's cross #{random_item} off the list!" 
	else
		puts "Well I left it on the list"
	end

	IO.write("grocery_list2.txt", "Your grocery list: #{new_grocery_list.join(", ")}")

end

def reject_all_but_author(people)
	people.reject { |person| person[:full_name] != "Joshua Brian Kushner" }.first
end

def select_by_name(array_of_users, full_name)
	array_of_users.select { |person| person[:full_name] == full_name }.first
end


	







user = {}

author = {
		name: "Josh",
		gender: "Male",
		age: "26",
		gender_slang: "guy",
		first_initial: "J",
		destination: "Home",
		first_name_caps: "JOSH",
		full_name: "Joshua Brian Kushner",
		middle_name: "Brian",
		middle_name_second_letter: "R"

	}

people = [user, author]

get_user_info(user)

user_gender_response(user)

jamaal_charles_age_comparison(user)
compare_100_and_15_years(user)
age_75_comparison(user)

define_gender_slang(user)

ask_permission_first_initial(user)

ask_destination(user)

ask_second_letter_middle_name(user)

user[:grocery_list] = ["eggs", "beer", "milk", "apples", "bacon"]
ask_random_item(user)
delete_grabbed_item(user)
create_grocery_list(user)
add_activia(user)

pulling_pushing_groceries(user)
reject_all_but_author(people)
select_by_name(people, author[:name])






