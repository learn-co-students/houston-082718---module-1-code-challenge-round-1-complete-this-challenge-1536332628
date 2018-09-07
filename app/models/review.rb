


class Review
  
    @@all = []
    attr_reader :customer
    attr_accessor :rating, :restaurant
    def initialize(customer, restaurant, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end

    def rating
        arry = []
        Review.all.select do |r|
            if r.restaurant == self
                arry << r.restaurant
            end
        end
        arry.collect do |r|
            r.rating
        end
    end


end

 