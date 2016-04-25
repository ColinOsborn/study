require 'pry'

class Pantry
  attr_reader :shopping_list

  def initialize
    @shopping_list = Hash.new(0)
  end

  def add_to_shopping_list(recipe)

    # have:
    # way to iterate through the list of ingredients
    # way to tell how much of that is needed

    recipe.ingredients.each do |ingredient|
      shopping_list[ingredient] += recipe.amount_required(ingredient)
    end


      #Shopping list needs to recognize ingredient as a key, if it does, then add to the value and aggregate amount
      #if it doesn't recognize key, make new key value pair into the shopping list hash
  end

  def double_shopping_list
    @shopping_list = Hash[@shopping_list.map {|k,v| [k,v*2]}]
  end

  def double_shopping_list_in_cups
    @shopping_list = Hash[@shopping_list.map {|k,v| [k,(v*2).to_s + " " + "cups"]}]
  end
end
