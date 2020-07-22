class Startup
    attr_accessor :name, :domain
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name 
        @founder = founder 
        @domain = domain
        @@all << self

    end 

    def self.all 
        @@all
    end

    def self.domains
        binding.pry
        self.all.map {|startup| startup.domain}
    end

    def pivot(domain, name)
        @domain = domain 
        @name = name
    end

    def find_by_founder
        # binding.pry
        Startup.all.find  {|startup| self.name == self.name}
    end

    

end
