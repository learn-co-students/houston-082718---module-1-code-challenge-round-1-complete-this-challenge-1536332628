class Review

    attr_reader :customer, :restaurant
    attr_accessor :rating, :content

    @@all = []

    def initialize (customer_instance, restaurant_instance, rating, content)
        @customer = customer_instance
        @restaurant = restaurant_instance
        @rating = rating
        @content = content

        @@all << self
    end

    def self.all
        @@all
    end
end

