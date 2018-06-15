class Review

	attr_accessor :first_name, :last_name, :name
	@@all = []

	def initialize(first_name, last_name, name)
		@first_name = first_name
		@last_name = last_name
		@name = name
		@@all << self
	end

	def self.all
		@@all = []
	end

	def customer
		"#{self.first_name} #{self.last_name}"
	end

	def restaurant
		self.name
	end
end

