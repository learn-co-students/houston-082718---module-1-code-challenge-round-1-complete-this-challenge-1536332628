class Restaurant
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def reviews
    reviews = Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    repeat = reviews.map do |review|
      review.customer
    end
    repeat.uniq
  end

  def average_star_rating
    ratings = reviews.map do |review|
      review.rating
    end
    total_ratings = ratings.inject(:+)
    avg = total_ratings / reviews.count
    avg.to_f
  end

  def longest_review
    content = reviews.map do |review|
      review.content
    end
    
    content.max_by { |content| content.length }
  end

end
