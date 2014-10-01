class Author < Person
  def initialize(author)
    super(author)
    @is_author = true
  end

  def self.get_info
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
    end

    def name
      @name
    end

    def user_name
      self.name
    end
end
