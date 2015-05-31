class City
  attr_reader :name
  def initialize(name:)
    @name = name
    @links = []
  end

  def add_link(link:)
    @links << link
  end

  def to_s
    @name
  end
end
