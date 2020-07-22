class FundingRound
  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup, @venture_capitalist, @type, @investment = startup, venture_capitalist, type, investment

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
end
