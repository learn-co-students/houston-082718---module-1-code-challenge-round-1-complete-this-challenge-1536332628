require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

mcd = Restaurant.new("McDonald's")
mcd2 = Restaurant.new("McDonald's")
bk = Restaurant.new("Burger King")

graham = Customer.new("Graham", "Watson")
graham2 = Customer.new("Graham", "Wilson")
linda = Customer.new("Linda", "Evans")

greview1 = graham.add_review(mcd, 1, "this place blows")
graham.add_review(mcd2, 1, "this place also blows")
graham.add_review(bk, 2, "this place is mediocre")
linda.add_review(mcd, 0, "how is this place allowed to exist?")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line