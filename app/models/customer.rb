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
    # Firs qe need to split the variable name to match the format of our instance variables
    # Call @@all to access the array of all the customers
    # iterate with .find to get the first result that match the block to compare eacn split variable with first_name && last_name with the == operator
    first_split_name = name.split(' ')[0]
    second_split_name = name.split(' ')[1]
    @@all.find do |customer|
      customer.first_name == first_split_name && customer.last_name == second_split_name
    end
  end

  def add_review(restaurant, review)
    # Call the method new in the Review class associating (replacing) customer with self to create the relation
    Review.new(restaurant, self, review)
  end

  def self.find_all_by_first_name(name)
    # Call @@all to acces all the array of customers
    # iterate with select to compare it customer's first_name matches the name
    @@all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    # Call @@all to acces the array of all the customers
    # map over it to select all the customer's full_name
    @@all.map do |customer|
      customer.full_name
    end
  end

end
