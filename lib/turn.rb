class Turn
  attr
  def initialize
    @turn_complete = false
    @train_cards_drawn = nil
    @route_to_claim = nil
    @destination_tickets_drawn = nil
  end

  def draw_train_car_cards(selections:)
    @train_cards_drawn = selections
    @turn_complete = true
  end

  def claim_a_route(start:, finish:)
    @route_to_claim = [start, finish]
    @turn_complete = true
  end

  def draw_destination_tickets(selections:)
    @destination_tickets_drawn = selections
    @turn_complete = true
  end

  def to_s
    description = "Drew #{@train_cards_drawn.join(", ")} train cards" if @train_cards_drawn
    description = "Claimed a route from #{@route_to_claim.first} to #{@route_to_claim.last}" if @route_to_claim
    description = "Drew #{@destination_tickets_drawn.join(", ")} destination ticket" if @destination_tickets_drawn
    description = "Incomplete turn" if !@turn_complete
    description
  end

  private
  def invalid_selections?(selections:)
#TODO
  end
end
