class Link
  def initialize(city1:, city2:, length:, color:)
    @city1 = city1
    @city2 = city2
    @length = length
    @color = color
    @available = true
  end

  def claim(train_cars:)
    validate_cars
    @available = false
  end

  def available?
    @available
  end

  def to_s
    "From #{@city1} to #{@city2}"
  end

end
