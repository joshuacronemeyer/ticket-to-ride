class Card

  class Train
    attr_reader :color
    def initialize(color:)
      @color = color
    end

    def to_s
      @color
    end
  end

  class DestinationTicket
    attr_reader :start, :finish, :points
    def initialize(start:, finish:, points:)
      @start, @finish, @points = start, finish, points
    end

    def to_s
      "#{@start} to #{@finish}"
    end
  end

end
