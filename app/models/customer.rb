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

  def self.find_by_name(full_name)
    self.all.find do |customer|
      customer.full_name == full_name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.map do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content, rating)
    if rating > 5
      rating = 5
    elsif rating < 1
      rating = 1
    end
    Review.new(self, restaurant, content, rating.round)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    self.reviews.map do |review|
      review.restaurant
    end.uniq
  end

end
