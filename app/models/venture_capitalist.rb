class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []
    @@tres_commas_club = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
        if total_worth > "1,000,000,000".to_i
            @@tres_commas_club << self 
        end
    end

    def self.all
        @@all
    end

    def tres_commas_club 
        @@tres_commas_club
    end
end
