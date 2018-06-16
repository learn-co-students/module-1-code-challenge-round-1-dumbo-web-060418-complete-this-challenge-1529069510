class Customer < ActiveRecord::Base

 def self.all_names
  self.all.map { |customer| customer.full_name }
 end

 def self.find_all_by_first_name(first_name)
  self.all.select { |customer| customer.first_name == first_name }
 end

 def add_review(restaurant, content)
  Review.create(customer_id: self.id, restaurant_id: restaurant.id, content: content)
 end

 def find_review(restaurant)
   review = self.reviews.find { |review| review.restaurant_id == restaurant.id }
   review.content
 end

 def full_name
  "#{first_name} #{last_name}"
 end

 def restaurants
   self.reviews.map { |review| Restaurant.find_by(id: review.restaurant_id) }
 end

 def reviews
   Review.all.select { |review| review.customer_id == self.id }
 end
end
