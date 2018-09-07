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
    name = full_name.split(" ")
    self.all.find do |customer|
      customer.first_name == name.first && customer.last_name == name.last
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    arr = []
    self.all.select do |customer|
      arr << customer.first_name + " " + customer.last_name
    end
    arr
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    arr = Review.all.select do |review|
      review.customer == self
    end
    arr.length
  end

  def restaurants
    arr = []
    Review.all.each do |review|
      if review.customer == self
        arr << review.restaurant
      end
    end
    arr.uniq
  end

end
