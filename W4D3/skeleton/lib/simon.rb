class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    puts "Let's play Simon!"
    until game_over == true
      take_turn
    end
  end

  def take_turn
    show_sequence
    require_sequence
    if @input == seq.join(" ")
      round_success_message
    else
      game_over = true
    end
  end

  def show_sequence
    add_random_color
    sequence_length += 1
    puts seq.join(" ")
    sleep(sequence_length/2)
    system("clear")
  end

  def require_sequence
    puts "Enter the sequence."
    @input = gets.chomp
    @input
  end

  def add_random_color
    seq << ["red", "blue", "yellow", "green"].sample
  end

  def round_success_message
    "That's correct!"
  end

  def game_over_message
    "*BZZZZZZZT*"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
