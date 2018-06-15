class Review
  attr_accessor :customer, :restaurant, :content

    @@all = []

    def initialize(customer, restaurant, content)
      @customer = customer
      @restaurant = restaurant
      @content = content

      @@all << self
    end

    def self.all
      @all
    end


    def customers
      self.all.select do |review|
        review.customer
    end
  end
    def restaurants
      self.all.select do |review|
        review.restaurant
      end
    end
end
