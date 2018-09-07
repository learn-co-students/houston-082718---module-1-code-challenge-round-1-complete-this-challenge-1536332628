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

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    # if rating != (1..5)
    #   puts "rating must be between 1 and 5"
    # else
      Review.new(self, restaurant, rating, content)
    # end
  end

  def self_reviews
    Review.all.select do |review|
      review.customer == self
    end
  end
  
  def num_reviews
    self_reviews.count
  end

  def restaurants
    rest_reviews = self_reviews.map do |review|
      review.restaurant
    end
    rest_reviews.uniq
  end

  def self.find_by_name(name)
    
  end
end
