class Startup
  attr_reader :founder, :domain
  attr_accessor :name

  @@all = []

  def initialize(name, founder, domain)
    @name, @founder, @domain = name, founder, domain

    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  #Instance methods that assign data
  def pivot(string)
    @domain = string
  end

  def sign_contract(venture_capitalist, type, investment)
    FundingRound.new(self, venture_capitalist, type, investment)
  end

  #Instance methods that fetch data
  def funding_rounds
    FundingRound.all.select { |funding_round| funding_round.startup == self }
  end

  def num_funding_rounds
    funding_rounds.length
  end

  def total_funds
    funding_rounds.map(&:investment).sum
  end

  def investors
    funding_rounds.map(&:venture_capitalist).uniq
  end

  def big_investors
    investors.select { |investor| VentureCapitalist.tres_comma_club.include?(investor) }
  end

  #Class methods that aggregate data
  def self.find_by_founder(founder)
    all.find { |startup| startup.founder == founder }
  end

  def self.domains
    all.map(&:domain).uniq
  end
end
