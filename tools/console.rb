require_relative '../config/environment.rb'



def reload
  load 'config/environment.rb'
end

mich = Customer.new('Daniel', 'Micher')
jonny = Customer.new('Jonny', 'Foam')

rest1 = 'La Defanse'
rest2 =  'Front Street Pizza'

rev1 = Review.new(rest1, mich, "Nice place")
rev2 = Review.new(rest1, jonny, "Kid Friendly!")
rev3 = Review.new(rest2, mich, "Cool place")

binding.pry
