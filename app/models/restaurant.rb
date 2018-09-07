class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end



  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

    def customers
    customers = Review.all.select do |review|
        review.restaurant == self
      end
        reviews.collect do |rev|
          rev.customer
        end
      end
      
      def reviews
        Review.all.select do |review|
          review.restaurant == self
        end
      end

      def average_star_rating

      end

      def longest_review
        Review.all.find
      end

end


# `Restaurant#customers`
#  - Returns a **unique** list of all customers who have reviewed a particular restaurant.
# - `Restaurant#reviews`
#  - returns an array of all reviews for that restaurant
# - `Restaurant#average_star_rating`
#  - returns the average star rating for a restaurant based on its reviews
# - `Restaurant#longest_review`
#  - returns the longest review content for a given restaurant



#
# `Restaurant` class
#
# - `Restaurant.all`
#   - returns an array of all restaurants
# - `Restaurant.find_by_name(name)`
#   - given a string of restaurant name, returns the first restaurant that matches
