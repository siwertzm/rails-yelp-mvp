# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

(1..10).each do |_id|
  resto = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    description: Faker::Restaurant.description,
    image: Faker::LoremFlickr.image
  )

  (1..5).each do |_id|
    Review.create!(
      content: Faker::Restaurant.review,
      rating: rand(0..5),
      restaurant_id: resto.id
    )
  end
end
