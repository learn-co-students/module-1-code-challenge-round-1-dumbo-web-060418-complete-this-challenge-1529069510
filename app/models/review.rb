class Review
  
	attr_accessor :customer, :restaurant, :content

  @@all = []

  def initialize(customer, restaurant, content)
  	@@all << self
# 	@title = title
  	@customer = customer
  	@restaurant = restaurant
  	@content = content
  end

#class methods

	def self.all
		@@all
	end

  #instance methods

  # def customer
  # 	self.customer
  # end

  # def restaurant
  # 	self.restaurant
  # end
end

