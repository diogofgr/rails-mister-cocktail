# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

all_ingredients = [ "lemon", "orange", "pineapple", "ice", "cinnamon", "rum", "vodka", "gin", "wine", "coke"]

all_ingredients.each do |ingredient|
  Ingredient.create(name: ingredient.capitalize)
end

# Seed with example cocktails
urls = [
  "mojito_juqqug.jpg",
  "tequilla-sunrise_nfo157.jpg",
  "san-francisco_pfuods.jpg",
  "pinacolada_yxbdyu.jpg",
  "gin-titanic_w5uzqm.jpg"
]
cocktail_1 = Cocktail.new(name: "Mojito")
cocktail_1.photo_url = "http://res.cloudinary.com/dpfv7sbu4/image/upload/v1487341784/#{urls[0]}"
cocktail_1.save!

cocktail_2 = Cocktail.new(name: "Tequilla Sunrise")
cocktail_2.photo_url = "http://res.cloudinary.com/dpfv7sbu4/image/upload/v1487341784/#{urls[1]}"
cocktail_2.save!

cocktail_3 = Cocktail.new(name: "San Francisco")
cocktail_3.photo_url = "http://res.cloudinary.com/dpfv7sbu4/image/upload/v1487341784/#{urls[2]}"
cocktail_3.save!

cocktail_4 = Cocktail.new(name: "Pina Colada")
cocktail_4.photo_url = "http://res.cloudinary.com/dpfv7sbu4/image/upload/v1487341784/#{urls[3]}"
cocktail_4.save!

cocktail_5 = Cocktail.new(name: "Titanic Gin")
cocktail_5.photo_url = "http://res.cloudinary.com/dpfv7sbu4/image/upload/v1487341784/#{urls[4]}"
cocktail_5.save!

