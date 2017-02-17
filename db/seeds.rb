# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Cocktail.destroy_all

all_ingredients = [ "lemon", "orange", "pineapple", "ice", "cinnamon", "rum", "vodka", "gin", "wine", "coke"]

all_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient)
end

# Seed with one expample cocktail
  url = "http://placehold.it/400x400"
(0..5).each do |i|
  product = Cocktail.new(name: "Cocktail #{i}")
  product.save!
  product.photo_url = url # Upload happens here
end
