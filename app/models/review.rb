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

  def customer
    Review.all.sellect do |customer|
      self.customer == self
    end
  end

  def restaurant
    Review.all.sellect do |restaurant|
      self.restaurant == self
    end
  end


end
