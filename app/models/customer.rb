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

  def self.find_by_name(full_name)
    self.all.detect do |f_name|
      f_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    self.all.select do |get_first_name|#get the first name out of the array of full_name
      get_first_name == @first_name
    end
    got_name = get_first_name #iterate to return all the instances of firstname that are equal to the string arguement
    got_name.find_all do |f_name|
      f_name == first_name
      #can possibly dry this but no time
    #   binding.pry
    end
  end

  def self.all_names
    self.all
  end

  def add_review(restaurant, content)
    Review.new(self, restaurant, content)
  end




end
