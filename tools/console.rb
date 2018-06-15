require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

robert = Customer.new('Robert', 'Tabares')
sapir = Customer.new('Sapir', 'Ashkenazi')

og = Restaurant.new('Olive Garden')
ab = Restaurant.new('Apple Bees')
eo = Restaurant.new('Eons')

robert.add_review(ab, 'beststuff')
robert.add_review(og, 'goodstuff')
sapir.add_review(ab, 'bestapps')
sapir.add_review(eo, 'ehh')

hello = Review.new(robert, ab, 'good beststuff')


binding.pry
