class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
  	@@all
  end

  def self.find_by_name(string)
  	self.all.find do |customer|
  		customer.full_name == string
  	end
  end

  def self.find_all_by_first_name(string)
  	self.all.find_all do |customer|
  		customer.first_name = string 
  	end
  end

  def self.all_names
  	Customer.all.map do |customer|
  		"#{customer.first_name} #{customer.last_name}"
  	end
  end

  def add_review(review)
  	new_review = Review.new(review)
  end

end
