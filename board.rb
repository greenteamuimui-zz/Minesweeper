require_relative 'tile'

class Board

  attr_reader :grid

  def initialize(grid = default_grid)
    @grid = grid
  end

  def self.default_grid
    Array.new(9) {Array.new(9)}
  end

  def place_bombs
    num_of_bombs = rand(10..20)
    num_of_bombs.times do
      bomb(grid.sample.sample)
    end
  end

  def bomb(position)
    @grid[position] = "B"
  end

  def []=(position, value)
    row, col = position
    @grid[row][col] = value
  end

  def [](position)
    row, col = position
    @grid[row][col]
  end

  def render
    @grid.map(&:to_s)
  end

end
