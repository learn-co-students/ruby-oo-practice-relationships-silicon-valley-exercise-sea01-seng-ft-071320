class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []
    def initialize (name, total_worth)
        @name = name
        @total_worth = total_worth

        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|venture| venture.total_worth > 1000000000}
    end

    def offer_contract (startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|round| round.venture_capitalist == self}
    end

    def portfolio
        objects = funding_rounds.collect {|round| round.startup}
        objects.collect {|startup| startup.name}.uniq

    end
    def biggest_investment
        funding_rounds.max_by {|round| round.investment}
    end
    def invested (domain)
        new = funding_rounds.select {|round| round.startup.domain == domain}
        new.sum {|round| round.investment}
    end

end
