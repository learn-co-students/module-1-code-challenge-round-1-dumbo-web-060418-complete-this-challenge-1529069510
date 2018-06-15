require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

cust1 = Customer.new("char", "tung")
cust2 = Customer.new("dar", "chu")
cust3 = Customer.new("dar", "helpme")
cust4 = Customer.new("dar", "saveI")
cust5 = Customer.new("google", "answers")



rest1 = Restaurant.new("techeats")
rest2 = Restaurant.new("metalfoods")
rest3 = Restaurant.new("rawore")
rest4 = Restaurant.new("pickandbones")
rest5 = Restaurant.new("eletricEggs")


rev1 = Review.new(cust1, rest1, "great")
rev2 = Review.new(cust1, rest2, "great")
rev3 = Review.new(cust1, rest3, "great")
rev4 = Review.new(cust2, rest4, "great")
rev5 = Review.new(cust2, rest5, "great")




binding.pry
