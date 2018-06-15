# Please copy/paste all three classes into this file to submit your solution!
class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    Customer.all.map do |name|
      self.name = name
    binding.pry

  end

end

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
    self.all.fin
  end

  def reviews
    Review.all.map do |review|
      review.restaurant == self
  end

end


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
