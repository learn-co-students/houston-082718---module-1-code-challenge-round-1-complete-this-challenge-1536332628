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

  def self.find_by_name(restaurant_name_string)
    Restaurant.all.find{|restaurant| restaurant.name == restaurant_name_string}
  end

  def customers
    my_reviews = Review.all.select{|review| review.restaurant == self}
    my_customers = my_reviews.map{|review| review.customer}
    my_customers.uniq
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def average_star_rating
    my_ratings = self.reviews.map{|review| review.rating}
    sum = 0
    my_ratings.each{|rating| sum += rating}
    avg = sum/my_ratings.size #rounds number, no time to turn into float lol
  end

  def longest_review
    longest_string = " "
    self.reviews.each do |review|
      if(review.content.size > longest_string.size)
        longest_string = review.content
      end
    end
    longest_string
  end

end
