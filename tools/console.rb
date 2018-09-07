require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

nicholas_l = Customer.new("Nicholas", "Luong")
matt = Customer.new("Matt", "Le")
michelle = Customer.new("Michelle", "Le")
nicholas_c = Customer.new("Nicholas", "Cage")

find_michelle = Customer.find_by_name("Michelle Le") #Return Michelle Le Customer
find_all_nick = Customer.find_all_by_first_name("Nicholas") #Nicholas Luong and Nicholas Cage
all_names = Customer.all_names #array of all customer full names

chipotle = Restaurant.new("Chipotle")
popeyes = Restaurant.new("Popeyes")
bk = Restaurant.new("Burger King")

rest_find = Restaurant.find_by_name("Burger King")

nicholas_l.add_review(bk, 8, "great")
nicholas_l.add_review(chipotle, 10, "best")
nicholas_l.add_review(bk, 3, "bad now")
nick_l_num_rev = nicholas_l.num_reviews
nick_l_rest_array = nicholas_l.restaurants

bk_cust_array = bk.customers
bk_revs = bk.reviews
bk_avg = bk.average_star_rating
bk_longest = bk.longest_review

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
