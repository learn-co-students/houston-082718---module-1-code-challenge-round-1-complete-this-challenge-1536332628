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
    Review.all.select do |review|
      review.restaurant == self
  end.map do |review|
    review.customer
  end.uniq
end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    rest_reviews = Review.all.select do |review|
      review.restaurant == self
    end
    ratings_array = rest_reviews.map do |review|
      review.rating
    end
    ratings_array.inject { |sum, rating| sum + rating }.to_f / ratings_array.size
  end

  def longest_review
    Review.all.select do |review|
      review.restaurant == self
    end.map do |review|
      review.content.split(' ')
    end
  end

end
