class Restaurant
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer}.uniq
  end

  def average_star_rating
    total = 0
    reviews.each {|review| total += review.rating}
    total.to_f / reviews.length
  end

  def longest_review
    sorted_reviews = reviews.sort_by {|review| review.content.length}
    sorted_reviews[-1]
  end
end
