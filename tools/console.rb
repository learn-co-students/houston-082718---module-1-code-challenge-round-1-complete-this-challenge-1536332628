require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Customer.new("michael", "something")
Customer.new("john", "something else")
Customer.new("andrew", "i really don't remember last names")
Customer.new("john", "stricklin")

puts Customer.find_by_name("michael something").full_name
puts Customer.find_all_by_first_name("john")
puts Customer.all_names
puts "\n"

pizza = Restaurant.new("pizzaland")
local_foods = Restaurant.new("local foods")

puts Restaurant.find_by_name("local foods").name
puts "\n"

Customer.all[0].add_review(pizza, "pizza is tasty", 5)
Customer.all[0].add_review(local_foods, "food is local", 4)
Customer.all[1].add_review(pizza, "pizza is pretty tasty", 4)
Customer.all[2].add_review(pizza, "pizza is ok", 3)
Customer.all[3].add_review(pizza, "pizza is lame", 2)
Customer.all[0].add_review(pizza, "pizza got less tasty", 2)

Customer.all.each do |customer|
  puts "#{customer.full_name} review count: #{customer.num_reviews}"
  puts customer.restaurants
end
puts "\n"

Restaurant.all.each do |restaurant|
  puts "#{restaurant.name} reviewer count: #{restaurant.customers.length}"
  puts restaurant.average_star_rating
  puts restaurant.longest_review.content
end


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
