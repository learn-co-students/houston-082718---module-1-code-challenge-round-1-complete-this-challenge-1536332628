require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new('Mary', 'Eatsalot')
cust2 = Customer.new('Mary', 'Eatsalot')
cust3 = Customer.new('Henry', 'Hungry')

rest1 = Restaurant.new('Chez Food')
rest2 = Restaurant.new('Mangeable')
rest3 = Restaurant.new('I can haz bicuit?')

rev1 = Review.new(rest1, 'they brought salad instead of fries', 2, cust1)
rev2 = Review.new(rest2, "great day to plate the meat ill eat at the salad buffet", 5, cust1)
rev3 = Review.new(rest2, "had to go back for fifths", 4, cust1)
rev4 = Review.new(rest3, 'my roast pigeon was undercooked but the racoon was decent', 3, cust2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line