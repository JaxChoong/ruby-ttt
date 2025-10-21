require_relative "lib/grid"
require_relative "lib/player"

player_array = []
something = Grid.new
(1..2).each do |i|
    # get player 1 and 2's icons
    print("Player #{i} Select Icon: 'X' or 'O': ")
    symbol = gets.chomp.upcase
    player = Player.new(i,symbol)
    player_array << player
end
something.print_grid
x = 0
(0...7).each do |i|
    # cycles between player 1 and player 2
    print "Player #{player_array[x].number} next move: \n"
    x = (x+1) % 2
end
p player_array