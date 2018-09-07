class Customer
  attr_accessor :first_name, :last_name

  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  
  def self.find_by_name(name) # not complete
    if self.all.first_name.include?(name)
    end
    # not complete
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customers|
      customers.first_name == name 
    end
  end
  
  def self.all_names # not complete
    self.all.map do |customers|
      customers.first_name
    end.map do |first_name|
      first_name << first_name.last_name
    end
    # not complete
  end

  def num_reviews # not complete
    total_reviews = 0
    Review.all.select do |reviews| 
      reviews.customer == self 
    end.map do |reviews|
      reviews.content
    end
    # not complete
  end

  def restaurants
    Review.all.select do |reviews| 
      reviews.customer == self
    end.uniq do |reviews|
      reviews.restaurant
    end.map do |reviews|
      reviews.restaurant
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
end
