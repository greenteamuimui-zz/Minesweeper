require_relative 'board'
class Tile
  attr_reader :bomb, :count

  def initialize(bomb = false)
    @face_up = false
    @bomb = false
    @bomb ||= true if bomb
    @flag = false
    @count = nil
  end

  def neighbors

  end

  def neighbor_count(neighbors_array)
    neighbors_array.reduce(0) { |accum, tile| accum += 1 if tile.bomb }
  end

  def reveal
    unless bomb
      @face_up = true
      @count = self.neighbor_count(self.neighbors)
    end

  end

  def to_s
    count ? count.to_s : "*"
  end





end
