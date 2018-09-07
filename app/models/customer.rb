class Customer

  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_names
    Customer.all.map{|customer| "#{customer.first_name} #{customer.last_name}"}
  end

  def self.find_by_name(string_full_name)
    string_array = string_full_name.split
    Customer.all.find{|customer| (string_array[0] == customer.first_name) && (string_array[1] == customer.last_name)}
  end

  def self.find_all_by_first_name(string_first_name)
    string_array = string_first_name.split
    Customer.all.select{|customer| (string_array[0] == customer.first_name)}
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    my_reviews = Review.all.select{|review| review.customer == self}
    my_reviews.size
  end

  def restaurants
    my_reviews = Review.all.select{|review| review.customer == self}
    my_restaurants = my_reviews.map{|review| review.restaurant}
    my_restaurants.uniq
  end

end
