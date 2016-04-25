require "./lib/pantry"
require "./lib/recipe"
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test

  def test_new_pantry_has_empty_shopping_list
    p = Pantry.new

    assert_equal({}, p.shopping_list)
  end

  def test_it_can_put_one_recipe_with_one_indredient_on_shopping_list
    p = Pantry.new

    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("frozen pizza", 1)

    p.add_to_shopping_list(r)

    assert_equal({"frozen pizza"=>1}, p.shopping_list)
  end

  def test_it_can_put_one_recipe_with_multiple_indredients_on_shopping_list
    p = Pantry.new

    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("pizza crust", 1)
    r.add_ingredient("cheese", 1)
    r.add_ingredient("sauce", 1)

    p.add_to_shopping_list(r)
    assert_equal({"pizza crust"=>1, "cheese"=>1, "sauce"=>1}, p.shopping_list)
  end

  def test_it_can_add_two_recipes_with_overlapping_ingredients
    p = Pantry.new

    r1 = Recipe.new("Cheese Pizza")
    r1.add_ingredient("pizza crust", 1)
    r1.add_ingredient("cheese", 1)
    p.add_to_shopping_list(r1)

    r2 = Recipe.new("Fondue")
    r2.add_ingredient("cheese", 1)
    p.add_to_shopping_list(r2)

    assert_equal({"pizza crust"=>1, "cheese"=>2}, p.shopping_list)
  end

  def test_it_can_add_two_recipes_with_overlapping_ingredients1
    p = Pantry.new

    r1 = Recipe.new("Cheese Pizza")
    r1.add_ingredient("pizza crust", 10)
    r1.add_ingredient("cheese", 5)
    p.add_to_shopping_list(r1)

    assert_equal({"pizza crust"=>20, "cheese"=>10}, p.double_shopping_list)
  end

  def test_it_can_add_two_recipes_with_overlapping_ingredients2
    p = Pantry.new

    r1 = Recipe.new("Cheese Pizza")
    r1.add_ingredient("pizza crust", 10)
    r1.add_ingredient("cheese", 5)
    p.add_to_shopping_list(r1)

    assert_equal({"pizza crust"=>"20 cups", "cheese"=>"10 cups"}, p.double_shopping_list_in_cups)
  end
end
