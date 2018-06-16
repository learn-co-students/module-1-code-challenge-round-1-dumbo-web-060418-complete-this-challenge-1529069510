class CreateReviews < ActiveRecord::Migration[4.2]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :restaurant_id
      t.string :content
    end
  end
end
