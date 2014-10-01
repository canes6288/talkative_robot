require 'pry'
require 'csv'
require './person'
require './user'
require './author'
require './grocery_list'



def question?(question, acceptable_replies)
	answer = ""
	while acceptable_replies.include?(answer) == false
		puts "#{question} (#{acceptable_replies.join(', ')})"
		answer = gets.chomp.downcase
	end
	answer
end


user_info = User.get_info # We don't have a User object yet, but we can call a User class method
@user = User.new(user_info)    # We create a User object
@author = Author.new(Author.get_info)

puts @user.user_gender_response
@user.jamaal_charles_age_comparison
@user.compare_100_and_15_years
@user.age_75_comparison
@user.gender_slang_question
@user.gender_slang_message
@user.first_initial
@user.first_initial_question
@user.ask_destination
puts @user.destination_message
@user.ask_second_letter_middle_name
@user.second_letter_middle_name_message

items = ["eggs", "beer", "milk", "apples", "bacon"]
@grocery_list = GroceryList.new(items)
@grocery_list.delete_grabbed_item
@grocery_list.print
@grocery_list.dont_forget_activia
@grocery_list.add_activia
@grocery_list.print_horizontal_list
@grocery_list.print
@grocery_list.creating_groceries_files


people = [@user, @author]
people.each { |person| puts "#{person}" }
