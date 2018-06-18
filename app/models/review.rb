class Review

  attr_accessor :restaurant, :customer, :review

  @@all = []

  def initialize(restaurant, customer, review)
    @restaurant = restaurant
    @customer = customer
    @review = review

    @@all << self
  end

  def self.all
    @@all
  end


end
