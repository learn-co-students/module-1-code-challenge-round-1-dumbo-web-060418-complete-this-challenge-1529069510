require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

james = Customer.new("James", "Thomas")
arren = Customer.new("Arren", "Alexander")
prince = Customer.new("Prince", "Wilson")
james2 = Customer.new("James", "Madison")
james3 = Customer.new("James", "Bond")
prince2 = Customer.new("Prince", "Wilson")


robertas = Restaurant.new("Roberta's")
littletongs = Restaurant.new("Little Tong's Noodle Shop")

amazing = Review.new(james, robertas, "amazing")
damn = Review.new(arren, littletongs, "damn")
wowzers = Review.new(prince, robertas, "wowzers")


binding.pry
