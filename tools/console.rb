require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chels = Customer.new("Chelsea", "Crowson")
amanda = Customer.new("Amanda", "Spence")
albany = Customer.new("Albany", "Lewis")

torchys = Restaurant.new("Torchy's Tacos")
shack = Restaurant.new("Shake Shack")

review1 = Review.new(amanda, torchys, 5, "Best queso ever!")
review2 = Review.new(albany, torchys, 3, "I'm not from Texas so my taco reviews aren't credible.")
review3 = Review.new(amanda, shack, 4, "Excellent stuffed mushroom burger.")
review4 = Review.new(amanda, torchys, 5, "So nice, I reviewed it twice!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line