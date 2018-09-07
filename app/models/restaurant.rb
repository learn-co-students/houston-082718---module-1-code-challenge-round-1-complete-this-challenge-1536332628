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

  def reviews
    Review.all.select do |rev|
      rev.restaurant == self
    end
  end

  def customers
    get_uc = self.reviews.map do |cust|
      cust.customer
    end
    get_uc.uniq
  end

  def average_star_rating
    get_stars = self.reviews.map do |stars|
      stars.rating
    end
    get_stars.reduce(:+) / get_stars.length
  end

  def longest_review
    reviews = {}
    long_review = self.reviews.map do |rev|
      reviews[rev] = rev.content.length
    end
    longest = reviews.max_by do |rev, x|
      x
    end

    longest[0].content
  end

  def self.find_by_name(n)
    self.all.find do |inst|
      inst.n == name
    end
  end

end
