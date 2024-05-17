# require "pry"

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

  def self.find_by_name(name)
    # access @@all to get all the restaurant instances
    # use .find method to serach for the first occurrance
    # evaluate each instance.name to == argument(name)
    @@all.find do |rest|
      rest.name == name
    end

  end

  def reviews
    # access review instances thru Review Class
    # call .all to grab all the instances to iterate.
    # use select to evaluate all the restaurant instences and compar them to self (instance)

    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    # As we already have the reviews of that restaurant we can call self.reviews to access the info
    # we use map to go thru the array and evaluate calling the customer method
    # as we want the actual result we must not copare it (==) to self or else it will be an array of 'true/false'

    self.reviews.map do |review|
      review.customer
    end
  end

end
