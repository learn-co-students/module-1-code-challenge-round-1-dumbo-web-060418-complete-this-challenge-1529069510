class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def customers
    self.reviews.map { |review| Customer.find_by(id: review.customer_id) }
  end
end
