class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

    def full_name
  # def full_name(first_name, last_name)
    # Customer.all.find do |customer|
      # puts "#{first_name} #{last_name}"
      "#{first_name} #{last_name}"
    # end
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  def num_reviews
    Review.all.select do |review|
      review.customer == self
    end.length
  end

  def restaurants
      Review.all.select do |review|
        review.customer == self
    end.map do |review|
      review.restaurant
    end.uniq
  end

  # def all_names
  #   self.all.map do |customer|
  #     customer.first_name
  #   end
  # end


end
