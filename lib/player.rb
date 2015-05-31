class Player
  attr_accessor :color, :destination_ticket_cards, :train_cards, :train_cars
  def initialize(color:)
    @color = color
    @destination_ticket_cards = []
    @train_cards = []
    @train_cars = []
  end

  def turn

  end

  def final_turn

  end
end
