class Restaurant < ActiveRecord::Base

  def customers
    self.reviews.map { |review| Customer.find_by(id: review.customer_id) }
  end

  def reviews
    Review.all.select { |review| review.restaurant_id == self.id }
  end
end
