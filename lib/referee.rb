class Referee
  def initialize(map:, players:)
    @map = map
    @players = players
    @available_train_cards = []
    @train_card_deck = []
    @destination_ticket_card_deck = []
  end

  def setup_game
    distribute_train_cars
    deal_train_cards
    deal_initial_destination_ticket_cards
  end

  def play_game
    current_player = main_loop
    final_turn(current_player)
  end

  def score

  end

  private

  def main_loop
    current_player = @players.first

    loop do
      turn = current_player.turn(map: @map.frozen_copy, cards: frozen_available_train_cards)
      perform_turn(player: current_player, turn: turn)
      break if current_player.game_end?
      current_player = next_player(current_player: current_player)
    end
    current_player
  end

  def final_turn(current_player)
    @players.count.times do
      current_player = next_player(current_player: current_player)
      turn = current_player.final_turn(map: @map)
      perform_turn(player: current_player, turn: turn)
    end
  end

  def frozen_available_train_cards
    IceNine.deep_freeze(Array.new(@available_train_cards))
  end

  def next_player(current_player:)

  end

  def perform_turn(player:, turn:)

  end

  def distribute_train_cars

  end

  def deal_train_cards

  end

  def deal_initial_destination_ticket_cards

  end
end
