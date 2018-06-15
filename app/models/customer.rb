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

  def self.find_by_name(fullname)
    self.all.find do |customer|
      customer.full_name == fullname
    end
  end

  def self.find_all_by_first_name(firstname)
    self.all.select do |customer|
      customer.first_name == firstname
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end

end
