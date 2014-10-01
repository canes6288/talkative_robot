def obi_location_known?
  @obi_location == "I do" || "i do" || "I DO" || "i Do"
end

puts "C-3PO, human-cyborg relations."
puts "Hey what's your name?"
name = gets.chomp

puts "It is a pleasure to meet you #{name}.  Have you ever met a protocol droid before?"
user_answer = gets.chomp
puts "#{user_answer}? How interesting for someone around these parts."

puts "I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you? [I do, I don't]"
@obi_location = gets.chomp

if obi_location_known?
  puts "Oh marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you."
else
  puts "I've really enjoyed speaking with you #{name}, but if you'll please excuse me, I have to help my friend find someone named Obi-Wan Kenobi"
end

puts "What's your fav farewell?"
farewell = gets.chomp
puts "#{farewell} to you too!"

puts "Well R2, I suppose we'll just have to keep looking."
puts "R2-D2: (Agreeable droid noises)"






