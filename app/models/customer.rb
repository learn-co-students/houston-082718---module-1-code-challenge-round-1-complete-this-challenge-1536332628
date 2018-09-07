# - `Customer.all`
# - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
# - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
# - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
# - should return an **array** of all of the customer full names
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

  def add_review(restaurant, content, rating)
    Review.new(self,restaurant,content,rating)
  end

  def num_reviews
    reviews = Review.all.select do |review|
      review.customer == self
    end
    reviews.size
  end

  def restaurants
    reviews = Review.all.select do |review|
      review.customer == self
    end
    restaurants = reviews.map do |review|
      review.restaurant
    end
    restaurants.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end

end
