require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
poke = Restaurant.new('PokeWorks')
katz = Restaurant.new('Katz')

moon = Customer.new('Violet', 'Moon')
mood = Customer.new('Violet', 'Mood')
bryn = Customer.new('Bryn', 'Bellomy')

meep = Review.new(moon, poke, 'wow, what a meep restaurant', 5)
ew = Review.new(bryn, poke, 'um, ew, gross, ew, why, ew', 1)
meh = Review.new(moon, katz, 'this was... interesting', 3)
meh = Review.new(mood, poke, 'this was... interesting', 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
