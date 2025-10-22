# player data like number and icon
class Player
  attr_accessor :number, :icon

  def initialize(number, icon)
    @number = number
    @icon = icon
  end
end
