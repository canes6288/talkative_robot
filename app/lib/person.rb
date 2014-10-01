

class Person
  def initialize(args)
    @name                      = args[:name]
    @gender                    = args[:gender]
    @age                       = args[:age]
    @full_name                 = args[:full_name]
    @destination               = args[:destination]
    @middle_name_second_letter = args[:middle_name_second_letter]
    @is_author                 = false
  end

  def full_name
    @full_name
  end

  def name
    @name
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def last_name
    @last_name
  end

  def to_s
    "name = #{@name}, age = #{@age}, author = #{@is_author}"
  end

  def user_gender_response
    male? ? "Hey you're a guy!" : "Hey you're a girl!"
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
        puts "You were 75... #{years_over_75} years ago!"
      else
        puts "Please put a positive number!"
    end
  end



  def gender_slang
    @gender_slang = male? ? ("guy") : ("girl")
  end

  def gender_slang_message
    puts "Hey #{@name}, you're a #{gender_slang} who is #{@age} old!"
  end


  def first_initial
      @name.chars.first
  end

  def first_initial_question
      answer = question?("Do you mind if I call you #{first_initial}?", ["yes", "no"])
      puts answer=="yes" ? "OK, I won't call you that..." : "Cool!"
  end

  def ask_destination
    @destination = question?("Hey #{@name.upcase}, where are you going!?", ["home", "to wrestle a bear"])
  end

  def destination_message
    @destination == "to wrestle a bear" ? "Jesus...you are awesome..." : "Eh, that sounds...OOOOkkkk..."
  end

  def ask_second_letter_middle_name
    middle_name = @full_name.split(" ")[1]
    @middle_name_second_letter = middle_name.chars[1].upcase
  end

  def second_letter_middle_name_message
    puts "Hmmm is your second letter of your middle name a #{@middle_name_second_letter}? I bet it is!"
  end

  private
    def male?
      @gender == "m" || @gender == "M"
    end
end
