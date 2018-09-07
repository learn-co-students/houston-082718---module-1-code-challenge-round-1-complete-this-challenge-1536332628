require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

kim = Customer.new("K","P")
michael = Customer.new("M","C")
jordan = Customer.new("J","C")
mj = Customer.new("M", "J")


local_foods = Restaurant.new("Local Foods")
lolas = Restaurant.new("Lola's")


kim_review1 = Review.new(kim, local_foods, 5, "Good")
michael_review1 = Review.new(michael, local_foods, 3, "OK")
jordan_review1 = Review.new(jordan, local_foods, 2, "Bad")


kim.add_review(lolas, "Good", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line