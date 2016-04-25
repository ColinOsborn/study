require "./lib/pokemon"
require "minitest/autorun"
require "minitest/pride"
require 'pry'

class PokemonTest < Minitest::Test

  def test_setup
    assert Pokemon.new.class
  end

  def test_that_we_can_do_that_attack
    charizard = Pokemon.new
    charizard.do_this_attack('fire blast')
    assert_equal "Pokemon doesn't know the move fire blast maybe you should teach him D:", charizard.do_this_attack('fire blast')
  end

  def test_we_can_teach_a_pokemon
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    assert_equal ({'fire blast' => 100}), charizard.attack
    assert_equal "Pokemon used fire blast! Did 100 damage!", charizard.do_this_attack('fire blast', 100)
  end

  def test_out_pokemons_knowledege
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal ({'fire blast' => 100, 'slash' => 30}), charizard.what_do_you_know
  end

  def test_we_can_double_the_effectivness
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal ({'fire blast' => 100, 'slash' => 30}), charizard.what_do_you_know
    assert_equal ({'fire blast' => 200, 'slash' => 60}), charizard.its_super_effective
  end

  def test_check_your_attack
    charizard = Pokemon.new
    charizard.learn_this_attack('slash', 30)
    charizard.its_super_effective
    assert_equal 60, charizard.check_attack('slash')
  end

  def test_how_much_have_you_learned
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal "I know how to do 2 moves.", charizard.how_many_moves
  end

  def test_whats_your_strongest_attack
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal ({'fire blast' => 200, 'slash' => 60}), charizard.its_super_effective
    assert_equal ({'fire blast' => 200}), charizard.strongest_attack
  end

  def test_we_can_print_this_strongest_attack
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal ({'fire blast' => 200, 'slash' => 60}), charizard.its_super_effective
    assert_equal ({'fire blast' => 200}), charizard.strongest_attack
    assert_equal "My strongest attack is fire blast at 200.", charizard.print_my_strongest_attack
  end

  def test_we_can_return_the_weakest_attack
    charizard = Pokemon.new
    charizard.learn_this_attack('fire blast', 100)
    charizard.learn_this_attack('slash', 30)
    assert_equal ({'fire blast' => 200, 'slash' => 60}), charizard.its_super_effective
    assert_equal ({'slash' => 60}), charizard.weakest_attack
    assert_equal "My weakest attack is slash at 60.", charizard.print_my_weakest_attack
    assert_equal "My strongest attack is fire blast at 200.", charizard.print_my_strongest_attack
  end

end
