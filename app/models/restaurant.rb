class Restaurant
  attr_accessor :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def reviews
    Review.all.select do |reviews| 
      reviews.restaurant == self 
    end.map do |reviews|
      reviews.content
    end
  end

  def customers
    Review.all.select do |reviews| 
      reviews.restaurant == self
    end.uniq do |reviews|
      reviews.customer
    end.map do |reviews|
      reviews.customer
    end
  end

  def self.all
    @@all
  end

end
