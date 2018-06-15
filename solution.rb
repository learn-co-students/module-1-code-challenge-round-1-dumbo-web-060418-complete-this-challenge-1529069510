class Customer

  ## create @@all = array, which will then be used in a class method

  @@all = []


  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    name = name.split.first
    @@all.find do |customers|
      customers.first_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |customers|
      customers.first_name == name
    end
  end

  def self.all_names
    @@all.map do |customers|
      customers.full_name
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end


end


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
    @@all.find do | i |
      i.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    Customer.all.map do |cust|
      cust.restaurant == self
    end
  end


end

class Review

  @@all = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer, restaurant, content)
    @customer = customer
    @content = content
    @restaurant = restaurant
    @@all << self
  end

  def self.all
    @@all
  end

end
