require_relative '../config/environment.rb'
# require_relative '../app/models.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

chipotle = Restaurant.new("chipotle")
dominos = Restaurant.new("dominos")
chillis = Restaurant.new("chillis")

richard = Customer.new("richard", "ojo")
mike = Customer.new("mike", "ojo")
princess = Customer.new("oyinda", "ojo")
daniel = Customer.new("daniel", "ojo")

badhost = Review.new(richard, chillis, 4, "the host was very mean and chatty she made my food cold")







binding.pry
0 #leave this here to ensure binding.pry isn't the last line
