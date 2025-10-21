class Grid
  def initialize
    @grid = Array.new(9,".")
    @wins = [
      [0,1,2], [3,4,5], [6,7,8], # horizontals
      [0,3,6], [1,4,7], [2,5,8], # verticals
      [0,4,8], [2,4,6]           # diagonals
    ]
  end

  def print_grid
    current_box = 0
    (0..2).each do |index|
      (0..2).each do |index2|
        print " " + @grid[current_box].to_s + " "
        if index2 == 0 || index2 == 1
          print "|"
        elsif index2 == 2
          puts "\n"
        end
        current_box +=1
      end
    end
    game_end?
  end

  def game_end?
    @wins.each do |a, b, c|
      if @grid[a] == @grid[b] && @grid[b] == @grid[c] && @grid[a] != "."
        return true
      end
    end
    false
  end

  def []=(index, icon)
    @grid[index] = icon
  end

end