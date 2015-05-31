require_relative '../ticket_to_ride'

describe Turn do
  let(:atlanta){ City.new(name: 'Atlanta') }
  let(:miami){ City.new(name: 'Miami') }
  let(:red){Card::Train.new(color: "red")}
  let(:yellow){Card::Train.new(color: "yellow")}
  let(:atlanta_miami){Card::DestinationTicket.new(start: atlanta, finish: miami, points: 10)}

  it "allows you to claim a route" do
    turn = Turn.new
    turn.claim_a_route(start: miami, finish: atlanta)
    expect(turn.to_s).to eq("Claimed a route from Miami to Atlanta")
  end

  it "doesn't allow you to claim an invalid route" do
  end

  it "allows you to draw train cards" do
    turn = Turn.new
    turn.draw_train_car_cards(selections: [red, yellow])
    expect(turn.to_s).to eq("Drew red, yellow train cards")
  end

  it "doesn't allow you to draw invalid cards" do
  end

  it "doesn't allow you to draw if there are no train cards" do

  end

  it "doesn't allow you to draw two cards if you chose a locomotive" do

  end

  it "allows you to draw tickets" do
    turn = Turn.new
    turn.draw_destination_tickets(selections: [atlanta_miami])
    expect(turn.to_s).to eq("Drew Atlanta to Miami destination ticket")
  end

  it "forces you to keep at least one ticket" do

  end

  it "doesn't let you do more than one action per turn" do

  end
end
