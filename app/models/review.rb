class Review
    attr_reader :restaurant, :content, :rating, :customer

    @@all = []

    def initialize(restaurant, content, rating, customer)
        @customer = customer
        @restaurant = restaurant
        @content = content
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
      end
  
end

