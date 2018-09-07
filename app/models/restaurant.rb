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

  def self.find_by_name(restaurant_name)
    self.all.find do |restaurant|
      restaurant.name == restaurant_name
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    total_stars = 0
    self.reviews.each do |review|
      total_stars += review.rating
    end
    total_stars.to_f / self.reviews.length
  end

  def longest_review
    arr = self.reviews.sort_by do |review|
      review.content.length
    end
    arr[-1].content
  end

end
