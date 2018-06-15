class Restaurant
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  # class methods

  def self.all
  	@@all
  end

  def self.find_by_name(name)
  	Restaurant.all.select {|rest| rest.name}[0]
  end

  #instance methods

  def reviews
  	#returns an array of all reviews for that restaurant
  	Review.all.select {|review| review.restaurant == self}
  end

  def customers
  	#returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`
  	Review.all.map {|review| review.customer}
  end
end
