require "pry"

class Pokemon
  attr_reader :attack

  def initialize
    @attack = {}
  end

  def do_this_attack(attack, damage = nil)
    if @attack[attack].nil?
      "Pokemon doesn't know the move #{attack} maybe you should teach him D:"
    else
      "Pokemon used #{attack}! Did #{damage} damage!"
    end
  end

  def learn_this_attack(attack, damage)
    @attack[attack] = damage
  end

  def what_do_you_know
    attack
  end

  def its_super_effective
    @attack.each do | attack, damage |
      @attack[attack] = damage * 2
    end
    @attack
  end

  def check_attack(attack)
    @attack[attack]
  end

  def how_many_moves
    num = @attack.length
    "I know how to do #{num} moves."
  end

  def strongest_attack
    @attack.select { |attack, damage| damage == @attack.values.max }
  end

  def print_my_strongest_attack
    strongest_attack.each_pair { |k, v| return "My strongest attack is #{k} at #{v}." }
  end

  def weakest_attack
    @attack.select { |attack, damage| damage == @attack.values.min }
  end

  def print_my_weakest_attack
    weakest_attack.each_pair { |k, v| return "My weakest attack is #{k} at #{v}." }
  end

end
