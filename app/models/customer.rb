class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

#class methods

	def self.all
		@@all
		
	end

	def self.find_by_name(name)
		#first customer with this name
		Customer.all.select { | cust | cust.full_name}[0]
		
	end

	def self.find_all_by_first_name(name)
		#all the customers with this 1st name
		Customer.all.select { |cust| cust.first_name == name }
	end

	def self.all_names
#all the various customer names		
		Customer.all.map { |cust| cust.full_name }
	end

#instance methods

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content)
  	# title = "#{self.first_name}'s review of #{restaurant}"
  	Review.new(self, restaurant, content)
  end

end
