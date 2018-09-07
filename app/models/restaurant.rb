# - `Restaurant.all`
# - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
# - given a string of restaurant name, returns the first restaurant that matches
class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    customers = reviews.map do |review|
      review.customer
    end
    customers.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    ratings = reviews.map do |review|
      review.rating
    end
    ratings.inject(0) {|s,r| s+r}/ratings.size.to_f

  end

  def longest_review
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
    reviews.max_by {|review| review.content.length }
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
