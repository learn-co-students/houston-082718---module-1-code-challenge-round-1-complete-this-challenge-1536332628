class Review
 @@all = []

  attr_accessor :customer, :restaurant, :rating, :content

    def initialize(customer, restaurant, rating, content)
      @customer = customer
      @restaurant = restaurant
      @rating = rating
      @content = content
      @@all << self
    end

    def self.all
      @@all
    end



end


# Review.all`
#   - returns all of the reviews
# - `Review#customer`
#   - returns the customer object for that given review
#   - Once a review is created, I should not be able to change the author
# - `Review#restaurant`
#   - returns the restaurant object for that given review
#   - Once a review is created, I should not be able to change the restaurant
# - `Review#rating`
#   - returns the star rating for a restaurant. This should be an integer from 1-5
# - `Review#content`
#   - returns the review content, as a string, for a particular review
