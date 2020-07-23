require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

 ven1 = VentureCapitalist.new("Ven1", 1500000)
 ven2 = VentureCapitalist.new("Ven2", 22500000)
 ven3 = VentureCapitalist.new("Ven3", 1000000009)
 ven4 = VentureCapitalist.new("Ven4", 402000)
 ven5 = VentureCapitalist.new("Ven5", 99999993)
 ven6 = VentureCapitalist.new("Ven6", 1000000009)

startup1 = Startup.new("name1", "founder1", "domain1")
startup2 = Startup.new("name2", "founder2", "domain2")
startup3 = Startup.new("name3", "founder3", "domain3")
startup4 = Startup.new("name4", "founder4", "domain4")

found1 = FundingRound.new(startup1, ven1, "Angel", 150.5)
found2 = FundingRound.new(startup1, ven2, "Angel", 175.3)
found3 = FundingRound.new(startup3, ven3, "Pre-Seed", 135.5)
found4 = FundingRound.new(startup2, ven6, "Seed", 129.8)
found5 = FundingRound.new(startup1, ven1, "Series A", 134.0)
found6 = FundingRound.new(startup4, ven1, "Series A", 150.5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line