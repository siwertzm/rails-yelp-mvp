class AddForeinKey < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :restaurant_id
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
