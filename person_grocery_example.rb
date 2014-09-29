require 'pry'

class Person
# constructor
	def initialize(name, age, groceries)
		@name = name
		@age = age
		@groceries = groceries
	end

	# getter (aka accessor method)
	def name
		@name
	end

	def age
		@age
	end

	#setter (aka mutator method)
	def age=(age)
		@age = age
	end

	def to_s #used to be 'greet'
		"My name is #{self.name} who is #{@age} years old with grocery list: #{groceries}."
				#when last variable is #{groceries.print}...it turns up blank...but with #{groceries.items} it works
	end

	def groceries
		@groceries
	end

end


class GroceryList
	def initialize(items, cost)
		@items = items
		@cost = cost
	end

	def print
		puts "#{self}"
	end

	def to_s
		"Your groceries are: #{items.join(",")} and costs #{cost}"
	end

	def items
		@items
	end

	def cost
		@cost
	end
end

gl = GroceryList.new(["eggs", "bacon"], 6)
gl2 = GroceryList.new(["beer", "chips"], 9)
mike = Person.new("Mike", 31, gl)

gl.print
gl2.print
mike.groceries.print #Why doesn't this work??

# puts mike.to_s
# # gl.print
# mike.groceries.print
# puts "Hello #{mike}"

# returns same thing as gl.items aka ['eggs', 'bacon']


