require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jonny = Customer.new('Jonny', 'Stricklin')
david = Customer.new('David', 'Billey')

good_burgers = Restaurant.new('Good Burgers')
good_tacos = Restaurant.new('Good Tacos')

jonny_review = Review.new(jonny, good_burgers, 5, 'Fantastic Burger')
jonny_review2 = Review.new(jonny, good_tacos, 3, 'Meh')
david_review = Review.new(david, good_tacos, 2, 'Ok Tacos')
david_review2 = Review.new(david, good_tacos, 3, 'Getting Better')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line