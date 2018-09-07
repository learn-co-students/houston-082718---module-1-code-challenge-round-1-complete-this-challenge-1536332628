class Restaurant

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
  end


  def self.all
    @@all
  end

  def self.find_by_name(name)
    Restaurant.all.select do |restaurant|
      if restaurant.name == name
        restaurant.name
      end
    end
  end

  def customers
    Review.all.select do |r|
      if r.restaurant = self
        r.customer
      end
    end
  end

  def reviews
    Review.all.select do |r|
      if r.restaurant == self
        r
      end
    end
  end

  def 

  end

end
 