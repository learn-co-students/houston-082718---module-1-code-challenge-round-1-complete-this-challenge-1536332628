require 'pry'
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end

  def self.find_all_by_first_name(name_string)
    arr = []
    Customer.all.map { |customer|
      if customer.first_name == name_string
        arr << customer
      end
      }
      arr
  end

  def self.find_by_name(name)
    # self.all.find { |customer| customer.first_name == name}
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def restaurants
    Review.all.select { |review| review.customer == self}.map { |review| review.restaurant.name}
  end

  def num_reviews
    n = 0
    customer = Review.all.select { |review| review.customer == self}
    # customer.map { |review|
    #   if review == true
    #     n += 1
    #   end
    # }
    #  n
  end
end
