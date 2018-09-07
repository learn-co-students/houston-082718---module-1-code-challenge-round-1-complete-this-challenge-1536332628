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
    arr = []
    Review.all.select do |review|
      if review.restaurant == self
        arr << review.customer
      end
    end
    arr.uniq
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
    avg = (total_stars.to_f / self.reviews.length)
    avg 
  end

  def longest_review
    review_length = 0
    review_content = nil
    self.reviews.each do |review|
      if review.content.length > review_length
        review_length = review.content.length
        review_content = review.content
      end
    end
    review_content
  end

end
