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
