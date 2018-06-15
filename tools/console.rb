require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

paul = Customer.new("Paul", "Bomba")
frank = Customer.new("Frankie", "Tables")

applebees = Restaurant.new("Applebees")



paul.add_review(applebees, "Gross!")

binding.pry
