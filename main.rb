require_relative "lib/grid"
require_relative "lib/player"

player_array = []
(1..2).each do |i|
    print("Player #{i} Select Icon: 'X' or 'O': ")
    symbol = gets.chomp.upcase
    player = Player.new(i,symbol)
    player_array << player
end
something = Grid.new
something.print_grid

p player_array