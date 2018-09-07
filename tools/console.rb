
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
customer_1 = Customer.new("Trung","Hoang")
customer_2 = Customer.new("Michael", "Jackson")
customer_3 = Customer.new("Janet", "Lee")

restaurant_1 = Restaurant.new("PF Chang")
restaurant_2 = Restaurant.new("Chocolate Factory")

review_1 = Review.new(customer_1,restaurant_1,5,"Great chicken dish. Will come again")
review_2 = Review.new(customer_1,restaurant_2,4,"Love cheese cake. Will come again")
review_3 = Review.new(customer_2,restaurant_1,1,"Bad chicken dish. Will NOT come again")
review_4 = Review.new(customer_2,restaurant_2,3,"Not too Bad cake. Maybe come again")

review_5 = customer_1.add_review(restaurant_1,"OK",4)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line