class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    while game_over != true
      self.take_turn
        if game_over = true
          self.reset_game
          return self.game_over_message
        else
          self.round_success_message
          @sequence_length += 1
        end
      end      
  end

  def take_turn
    self.show_sequence
    self.require_sequence
      game_over = true if self.require_sequence != show_sequence
  end

  def show_sequence
    self.add_random_color
      # seq.each do |color|
  end

  def require_sequence
    input = gets.chomp

  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    p "success"
  end

  def game_over_message
    p "Game Over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
