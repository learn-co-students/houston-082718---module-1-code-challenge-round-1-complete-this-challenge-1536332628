class Customer


  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review (restaurant_instance, content, rating)
    # Customer, Restaurant, content, rating
    Review.new(self, restaurant_instance, content, rating)
  end

  def self.find_by_name(name)
    #Could make it lower
    self.all.find do |inst|
      (inst.first_name + ' ' + inst.last_name) == name
    end
  end

  def self.find_by_first_name (name)
    # Could add a to lower if you want to type in any case. Also would need to change the initialize
    self.all.select do |names|
      names.first_name == name
    end
  end

  def self.all_names
    self.all.map do |names_instance|
      names_instance.first_name + ' ' + names_instance.last_name
    end
  end

  def reviews
    reviewed_restaurants = Review.all.select do |rev|
      rev.customer == self
    end
  end

  def num_reviews
    self.reviews.length
  end

  def restaurants
    restaurs = self.reviews.map do |res|
      res.restaurant
    end
    restaurs.uniq
  end

end
