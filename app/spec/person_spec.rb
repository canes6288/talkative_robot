require 'spec_helper'
require './lib/person'

describe "Person" do
  let(:person) { Person.new( { name: "Josh",
    age: 26, gender: "M", full_name: "Josh Brian Kushner", destination: "to wrestle a bear"} ) } 

  subject { person }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }
  it { should respond_to(:last_name) }


  describe "full_name" do
    it "returns the full name" do
      expect(person.full_name).to eq("Josh Brian Kushner")
    end
  end

  describe "first_initial" do
    it "returns first letter of name" do
      expect(person.first_initial).to eq("J")
    end
  end

  describe "ask_second_letter_middle_name" do
    it "returns second letter of middle name" do
      expect(person.ask_second_letter_middle_name).to eq("R")
    end
  end

  describe "user_gender_response" do
    it "returns true message saying you're a guy" do
      expect(person.user_gender_response).to eq("Hey you're a guy!")
    end
  end

  describe "gender_slang_question" do
    it "returns the slang term for genders (guy or girl)" do
      expect(person.gender_slang_question).to eq("guy")
    end
  end

  describe "destination_message" do
    it "returns message based on choice of destination" do
      expect(person.destination_message).to eq("Jesus...you are awesome...")
    end
  end

end


# LAB
# Write happy-path tests for major methods
# IGNORE ANYTHING WITH puts AND/OR gets
  # Testing this stuff is weird and not practical
