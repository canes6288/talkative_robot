class User < Person
  def initialize(user)
    super(user)
  end

  def self.get_user_info

    user = {}

    puts "What's your name?"
    user[:name] = gets.chomp.capitalize

    puts "What gender are you? (M, F)"
    user[:gender] = gets.chomp.downcase

    puts "What's your age?"
    user[:age] = gets.chomp.to_i

    puts "What's your full name? (first, middle, last)"
    user[:full_name] = gets.chomp

    user
  end
end