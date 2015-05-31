require_relative '../ticket_to_ride'

describe Card::Train do
  it "knows what color" do
    red_train = Card::Train.new(color: "red")
    expect(red_train.color).to eq("red")
  end
end

describe Card::DestinationTicket do
  let(:atlanta){ City.new(name: 'Atlanta') }
  let(:miami){ City.new(name: 'Miami') }
  it "knows what cities" do
    ticket = Card::DestinationTicket.new(start: atlanta, finish: miami, points: 12)
    expect(ticket.finish.name).to eq("Miami")
    expect(ticket.start.name).to eq("Atlanta")
  end

  it "knows how many points" do
    ticket = Card::DestinationTicket.new(start: atlanta, finish: miami, points: 12)
    expect(ticket.points).to eq(12)
  end
end
