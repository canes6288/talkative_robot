class GroceryList
  def initialize(items)
    @items = items
  end

  def items
    @items
  end

  def delete_grabbed_item
    random_item = @items.sample
    
    answer = question?("Did you grab the #{random_item}?", ["yes", "no"])
    
    if answer == "yes" 
      @items.delete(random_item)
      puts "OK let's cross #{random_item} off the list!" 
    else
      puts "Well I left it on the list"
    end
  end

  def print
      @items.each_index { |i| puts "Item #{i+1} -- #{@items[i]}" }
  end

  def to_s
    @items.join(",")
  end

  def dont_forget_activia
    puts "Oh yeah! Don't forget the Activia!"
  end

  def add_activia
    @items << "activia"
  end

  def print_horizontal_list
    puts "Grocery list: #{@items}"
  end

  def creating_groceries_files
    IO.write("grocery_list.txt", @items)
    cross_off_the_list_txt_file
    push_to_new_grocery_list_txt
    push_grocery_list_to_csv
  end

  private
    def cross_off_the_list_txt_file
      @items = IO.read("grocery_list.txt").chomp.split(",")

      random_item = @items.sample
      answer = question?("Did you grab the #{random_item}?", ["yes", "no"])

      if answer == "yes" 
        @items.delete(random_item)
        puts "OK let's cross #{random_item} off the list!" 
      else
        puts "Well I left it on the list"
      end
      
    end


    def push_to_new_grocery_list_txt
      IO.write("grocery_list2.txt", "#{@items.join(",")}")
    end



    def push_grocery_list_to_csv
      @items = IO.read("grocery_list2.txt").split(",") #reads grocery list 2.  Then it will substitute every "," with a new row.

          CSV.open("grocery_list3.csv", "w") do |csv|     
          csv << ["Item Number", "Item name"]
          
            @items.each_index do |i|
            csv << ["#{i+1}", "#{@items[i]}"]
            end
          end
      end
  
end