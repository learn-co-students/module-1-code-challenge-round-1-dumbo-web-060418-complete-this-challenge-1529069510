class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.find_by_name(name)
    self.all.select {|restaurant| restaurant.name.downcase == name.downcase}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    self.reviews.map {|review| review.customer }
  end

  def self.all
    @@all
  end

end
