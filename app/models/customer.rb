class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end



  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    full_name.join
  end

  def self.find_all_by_first_name(name)
  arr = Customer.all.select do |customer|
      customer.first_name == name
    end
    arr
end

  def self.all_names
    Customer.all.full_name
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    num_of = 0
    Review.all.select do |review|
      review.customer == self
      num_of += 1
    end
    num_of
  end

  def restaurants
    # Restaurant.all.select do |restaurant|
    #   restaurant.customer == self
    # end
  reviews = Review.all.select do |review|
      review.customer == self
    end
      reviews.collect do |rev|
        rev.restaurant
      end
    end

end

# `Customer#add_review(restaurant, content, rating)`
#   - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
# - `Customer#num_reviews`
#   - Returns the total number of reviews that a customer has authored
# - `Customer#restaurants`
#   - Returns a **unique** array of all restaurants a customer has reviewed
#
#
#



# `Customer.all`
#   - should return **all** of the customer instances
# - `Customer.find_by_name(name)`
#   - given a string of a **full name**, returns the **first customer** whose full name matches
# - `Customer.find_all_by_first_name(name)`
#   - given a string of a first name, returns an **array** containing all customers with that first name
# - `Customer.all_names`
#   - should return an **array** of all of the customer full names
