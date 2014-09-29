require 'pry'
require 'csv'


class Person
	def initialize(args)
		@name = args[:name]
		@gender = args[:gender]
		@age = args[:age]	
		@full_name = args[:full_name]
		@is_author = false
	end

	def full_name
		@full_name
	end


	def to_s
		"name = #{@name}, age = #{@age}, author = #{@is_author}"
	end

	def user_gender_response
		if @gender == "m" 
			puts "Hey you're a guy!"
		else 
			puts "Hey you're a girl!"
		end
	end


	def jamaal_charles_age_comparison
		jamaal_charles_age = 27

		case
			when @age > jamaal_charles_age
				puts "You're older than Jamaal Charles!  He's only #{jamaal_charles_age}!"
			when @age == jamaal_charles_age
				puts "You're the same age as Jamaal Charles!"
			when @age < 1
				puts "Please put a number greater than 0!"
			else
				puts "You're younger than Jamaal Charles!"
		end
	end



	def compare_100_and_15_years
		puts "Wow! You're old! Are you a great-great grandmother/father?" if @age > 100
		puts "Wow! You're young!" unless @age > 15
	end



	def age_75_comparison

		case 
			when @age < 75
				years_under_75 = 75 - @age
				puts "You will be 75 years old in #{years_under_75} years!"
			when @age == 75
				puts "You're 75!"
			when @age > 75
				years_over_75 = @age - 75
				puts "You'll be 75 in #{years_over_75} years!"
			else
				puts "Please put a positive number!"
		end
	end



	def gender_slang
		gender_slang = (@gender == "m") ? ("guy") : ("girl")
		puts "Hey #{@name}, you're a #{gender_slang} who is #{@age} old!"
	end


	def first_initial
			first_initial = @name.chars.first
			answer = question?("Do you mind if I call you #{first_initial}?", ["yes", "no"])
			puts answer ? "OK, I won't call you that..." : "Cool!"
	end



	def ask_destination
		destination = question?("Hey #{@name.upcase}, where are you going!?", ["home", "to wrestle a bear"])
		puts destination == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."
	end

	def ask_second_letter_middle_name
		middle_name = @full_name.split(" ")[1]
		middle_name_second_letter = middle_name.chars[1].upcase
		puts "Hmmm is your second letter of your middle name a #{middle_name_second_letter}? I bet it is!"	
	end
end
# END OF PERSON

class Author < Person
	def initialize(args)
		super(args)
		@is_author = true
	end
end
#END OF AUTHOR

class User < Person
	def initialize(args)
		super(args)
	end

	def self.get_user_info

		args = {}

		puts "What's your name?"
		args[:name] = gets.chomp.capitalize

		puts "What gender are you? (M, F)"
		args[:gender] = gets.chomp.downcase

		puts "What's your age?"
		args[:age] = gets.chomp.to_i

		puts "What's your full name? (first, middle, last)"
		args[:full_name] = gets.chomp

		args
	end
end
#END OF USER

class GroceryList
	def initialize(grocery_list)
		@grocery_list = grocery_list
	end

	def delete_grabbed_item

		random_item = @grocery_list.sample
		
		answer = question?("Did you grab the #{random_item}?", ["yes", "no"])
		
		if answer == "yes" 
			@grocery_list.delete(random_item)
			puts "OK let's cross #{random_item} off the list!" 
		else
			puts "Well I left it on the list"
		end
	end

	def print
		item_number = 1
			while item_number < @grocery_list.count
					@grocery_list.map do |grocery| 
					puts "Item #{item_number} -- #{grocery}"
					item_number += 1
					end
			end
	end

	def to_s
		@grocery_list.join(",")
	end

	def add_activia
		puts "Oh yeah! Don't forget the Activia!"
		@grocery_list << "activia"
		puts "Grocery list: #{@grocery_list.join(", ")}"
	end

	def creating_groceries_files
		IO.write("grocery_list.txt", @grocery_list.join(","))
		crossing_off_the_list_txt_file
		pushing_to_grocery_list2_txt
		pushing_grocery_to_csv
	end


####STARTING PRIVATE FILES
private
	def crossing_off_the_list_txt_file
		@grocery_list = IO.read("grocery_list.txt").chomp.split(",")

		random_item = @grocery_list.sample
		answer = question?("Did you grab the #{random_item}?", ["yes", "no"])

		if answer == "yes" 
			@grocery_list.delete(random_item)
			puts "OK let's cross #{random_item} off the list!" 
		else
			puts "Well I left it on the list"
		end
		
	end


	def pushing_to_grocery_list2_txt
		IO.write("grocery_list2.txt", "#{@grocery_list.join(",")}")
	end

		

	def pushing_grocery_to_csv
		@grocery_list = IO.read("grocery_list2.txt").split(",") #reads grocery list 2.  Then it will substitute every "," with a new row.

				CSV.open("grocery_list3.csv", "w") do |csv|  		
				csv << ["Item Number", "Item name"]
	  		
	  			@grocery_list.each_index do |i|
	  			csv << ["#{i+1}", "#{@grocery_list[i]}"]
	  			end
	  		end
		end

	
end
#END OF GROCERYLIST

def question?(question, acceptable_replies)
	answer = ""
	while acceptable_replies.include?(answer) == false
		puts "#{question} (#{acceptable_replies.join(', ')})"
		answer = gets.chomp.downcase
	end
	answer
end


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

user_info = User.get_user_info # We don't have a User object yet, but we can call a User class method
@user = User.new(user_info)    # We create a User object
@author = Author.new(author)

@user.user_gender_response
@user.jamaal_charles_age_comparison
@user.compare_100_and_15_years
@user.age_75_comparison
@user.gender_slang
@user.first_initial
@user.ask_destination
@user.ask_second_letter_middle_name

grocery_list = ["eggs", "beer", "milk", "apples", "bacon"]
@grocery_list = GroceryList.new(grocery_list)
@grocery_list.delete_grabbed_item
@grocery_list.print
@grocery_list.add_activia
@grocery_list.print
@grocery_list.creating_groceries_files


people = [@user, @author]
people.each { |person| puts "#{person}" }
