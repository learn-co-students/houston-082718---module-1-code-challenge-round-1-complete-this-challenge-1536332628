class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
    customer_name = Review.all.select { |review| review.restaurant == self}.map { |review| review.customer}
      # for customer in Customer.all
      #   if customer = customer_name
      #   return customer.full_name
      #   end
      # end
  end

  def reviews
    Review.all.select { |review| review.restaurant == self}.map { |review| review.content }
  end


end
