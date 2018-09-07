class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # Restaurant.all : returns an array of all restaurants
  def self.all
    @@all
  end

  # Restaurant.find_by_name(name) : given a string of restaurant 
  # name, returns the first restaurant that matches
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  # Restaurant#customers : Returns a unique list of all 
  # customers who have reviewed a particular restaurant.
  def customers 
    self.reviews.collect do |review|
      review.customer
    end
  end

  # Restaurant#reviews : returns an array of all reviews for 
  # that restaurant
  def reviews
    this_restaurant_reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  # Restaurant#average_star_rating : returns the average star 
  # rating for a restaurant based on its reviews
  def average_star_rating
    sum_rating = 0
    rating_array = self.reviews.each do |review|
      sum_rating += review.rating
    end

    sum_rating.to_f/self.reviews.count

  end

  # Restaurant#longest_review : returns the longest review 
  # content for a given restaurant
  def longest_review
    reviews.sort_by do |review|
      review.content.length
    end.last
  end

end