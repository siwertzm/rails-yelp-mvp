class AddRestaurantIdToAvis < ActiveRecord::Migration[7.1]
  def change
    add_reference :avis, :restaurant, null: false, foreign_key: true
  end
end
