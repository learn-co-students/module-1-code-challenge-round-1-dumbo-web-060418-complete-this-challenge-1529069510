class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  	@@all
  end

  # def self.find_by_name(name)
  # 	Restaurant.all.find do |restaurant|
  # 		restaurant == self.name
  # 	end
  # end


end


