require_relative '../ticket_to_ride'

describe Referee do
  let(:atlanta){ City.new(name: 'Atlanta') }
  let(:miami){ City.new(name: 'Miami') }
  let(:map) do
    map = Map.new
    map.link(city1: atlanta, city2: miami, length: 5, color: 'blue')
  end
  let(:referee){ Referee.new(map: map) }
  it "lets me claim a route between adjacent cities" do
    referee
  end
end
