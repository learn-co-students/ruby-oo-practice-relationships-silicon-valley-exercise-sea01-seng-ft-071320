require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#startups 
herschbook = Startup.new("Herschel's Book", "Nathan", "Herscbook.com")
holiday = Startup.new("Holiday Today", "Nathan", "Holidaytoday.com")
appian = Startup.new("Appian", "Matt Calkins", "Appian.com")

#venturecapitalists
paul = VentureCapitalist.new("Paul", "1,232,342,234".to_i)
karen = VentureCapitalist.new("Karen", "5,334,322,234".to_i)
herschel = VentureCapitalist.new("Herschel", "322,234".to_i)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line