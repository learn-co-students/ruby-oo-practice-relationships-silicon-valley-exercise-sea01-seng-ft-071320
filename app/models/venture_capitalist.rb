class VentureCapitalist
  attr_reader :name, :total_worth

  @@all = []

  def initialize(name, total_worth)
    @name, @total_worth = name, total_worth

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that assign data
  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment)
  end

  #Instance methods that fetch data
  def funding_rounds
    FundingRound.all.select { |funding_round| funding_round.venture_capitalist == self }
  end

  def portfolio
    funding_rounds.map(&:startup).uniq
  end

  def biggest_investment
    funding_rounds.max_by(&:investment)
  end

  def invested(domain)
    funding_rounds.select { |funding_round| funding_round.startup.domain.downcase == domain.downcase }.map(&:investment).sum
  end

  #Class methods that aggregate data
  def self.tres_comma_club
    all.select { |venture_capitalist| venture_capitalist.total_worth >  1000000 }
  end
end
