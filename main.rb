require_relative "lib/grid"
require_relative "lib/player"

player_array = []
game = Grid.new
(1..2).each do |i|
  # get player 1 and 2's icons
  print("Player #{i} Select Icon: 'X' or 'O': ")
  symbol = gets.chomp.upcase
  player = Player.new(i, symbol)
  player_array << player
end

x = 0

game.print_grid
loop do
  # cycles between player 1 and player 2
  print "Player #{player_array[x].number} enter grid position for next move (0-8): "
  move = gets.to_i
  until game.valid_move?(move, player_array[x].icon)
    puts("Invalid move! Try Again! ")
    print "Player #{player_array[x].number} enter grid position for next move (0-8): "
    move = gets.to_i
  end
  game[move] = player_array[x].icon
  x = (x + 1) % 2
  game.print_grid
  break if game.game_end?
end
puts "Player #{player_array[x - 1].number} wins!"
