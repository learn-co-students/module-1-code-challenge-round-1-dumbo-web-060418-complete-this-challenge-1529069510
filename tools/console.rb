require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end

mich = Customer.new('Daniel', 'Micher')
jonny = Customer.new('Jonny', 'Foam')

rest1 = Restaurant.new('La Defanse')
rest2 =  Restaurant.new('Front Street Pizza')

mich.add_review(rest1, "Nice place")
mich.add_review(rest1, "Veggie option")
mich.add_review(rest2, "Buuuuu")
mich.add_review(rest2, "Pet Friendy")
mich.add_review(rest2, "Kid friendy")
mich.add_review(rest1, "Awesome")
mich.add_review(rest2, "Cool")

review = Review.new(rest2, mich, "Good stuff")
binding.pry
