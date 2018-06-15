require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

quinn = Customer.new("Quinn", "Lashinsky")
new_review = Review.new("Quinn", "Lashinsky", "Panera")
restaurant = Restaurant.new("Panera")


Pry.start
