class Startup

    attr_accessor :name
    attr_reader :founder, :domain

    @@all = []

    def initialize (name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot (new_domain, new_name)
        @name = new_name
        @domain = new_domain
        self
    end
#     
    def self.find_by_founder(founder)
        self.all.find {|startup| startup.founder == founder}
    end
    def self.domains
        self.all.collect {|startup| startup.domain}
    end 

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end
    def rounds 
        FundingRound.all.select {|round| round.startup == self}
    end
    def num_funding_rounds
        rounds.count
    end

    def total_funds
        rounds.sum {|round| round.investment}
    end

    def investors
        rounds.collect {|round| round.venture_capitalist}.uniq
    end

    def big_investors 
        big = investors.select {|investor| investor.total_worth > 1000000000}
        big.collect {|investor| investor.name}
    end

end
