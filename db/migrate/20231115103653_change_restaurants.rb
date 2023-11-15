class ChangeRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :reviews, column: :restaurant_id
  end
end
