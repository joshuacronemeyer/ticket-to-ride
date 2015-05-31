class Map
  def initialize
    @cities = Set.new
    @links = Set.new
  end

  def link(city1:, city2:, length:, color:)
    @cities << city1 << city2
    link = Link.new(city1: city1, city2: city2, length: length, color: color)
    @links << link
    city1.add_link(link: link)
    city2.add_link(link: link)
  end

  def unavailable_route?(start:, finish:)
    false
  end

  def available_routes
    @links.find_all(&:available?)
  end
end
