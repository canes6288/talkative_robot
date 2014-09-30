require 'spec_helper'
require './lib/grocery_list'

describe "GroceryList" do
  let(:grocerylist) { GroceryList.new( ["eggs", "beer", "milk", "apples", "bacon"] ) } 


  describe "items" do
    it "returns the items in the grocery list" do
      expect(grocerylist.items).to eq( ["eggs", "beer", "milk", "apples", "bacon"])
    end
  end


  describe "add_activia" do
    it "returns a new grocery list with same items and activia added" do
      expect(grocerylist.add_activia).to eq( ["eggs", "beer", "milk", "apples", "bacon", "activia"] )
    end
  end

end