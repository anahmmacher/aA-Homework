class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = Player.new(name1, side1)
    @name2 = Player.new(name2, side2)
    @cups = Array.new(14){Array.new(0)}
    @store = @cups[0], @cups[13]
    
    
    place_stones
  end

  def place_stones(num = 4)
    self.cups.each do |cup|
      num.times do 
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
  end

  def make_move(start_pos, current_player_name)

    self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
