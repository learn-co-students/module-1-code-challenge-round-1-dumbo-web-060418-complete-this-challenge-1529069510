class Review < ActiveRecord::Base
  belongs_to :restaurants
  belongs_to :customers
end
