# grid class with win conditions, current grid info, printing of grid and also checking if game ended
class Grid
  def initialize
    @grid = Array.new(9, ".")
    @wins = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # horizontals
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # verticals
      [0, 4, 8], [2, 4, 6] # diagonals
    ]
  end

  def print_grid
    current_box = 0
    (0..2).each do |_index|
      (0..2).each do |index2|
        print " #{@grid[current_box]} "
        # if its the end of the row, move to next line, else print the seperator
        index2 == 2 ? (puts "\n") : (print "|")
        current_box += 1
      end
    end
  end

  def game_end?
    @wins.each do |a, b, c|
      return true if @grid[a] == @grid[b] && @grid[b] == @grid[c] && @grid[a] != "."
    end
    false
  end

  def []=(index, icon)
    @grid[index] = icon
  end

  def valid_move?(pos, _icon)
    @grid[pos] == "."
  end
end
