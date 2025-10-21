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

x = 0

something.print_grid
begin
    # cycles between player 1 and player 2
    print "Player #{player_array[x].number} next move: "
    move = gets.to_i
    something[move] = player_array[x].icon
    x = (x+1) % 2
    something.print_grid
end while !something.game_end?
puts "Player #{x} wins!"