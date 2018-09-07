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

greview1 = graham.add_review(mcd, "this place blows", 1)
graham.add_review(mcd2, "this place also blows", 1)
graham.add_review(bk, "this place is mediocre", 2.6)
linda.add_review(mcd, "how is this place allowed to exist?", 0)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line