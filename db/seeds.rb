# puts "cleaning DB"
# Ingredient.destroy_all
# puts "creating ingredients"
# alcohol = ["Beer", "Guiness", "IPA beer", "Weiss bier", "Sangria", "Palm wine", "Prosecco", "Malt liquor", "Cider", "Sweet Vermouth", "Sparkling wine", "Red wine", "White wine", "Rosé", "Sake", "Mead", "Soju", "Shochu", "Pastis", "Cynar", "Vermouth", "Campari", "Amaretto", "Martini", "Jägermeister", "Gin", "Vodka", "Whiskey", "Tequila", "Rum", "Sambuca", "Ouzo", "Aquavit", "Schnaps", "Grappa", "Cognac", "Arak", "Absinthe"].sort
# soda = ["Cola", "Sprite", "Fanta", "Orangina", "Canada dry", "Tonic", "Fizzy water", "Root beer", "Ginger beer", "Dr Pepper", "Cherry soda", "Apple soda", "Ginger Soda", "Maracuja soda", "Lemon soda", "Pineapple soda"].sort
# juice = ["Water", "Apple juice", "Orange juice", "Lemon juice", "Cherry juice", "Pineapple juice", "Grape juice"].sort
# spice = ["Orange bitters", "Lemon bitters", "Ice", "Salt", "Pepper", "Tabasco", "Ginger", "Chili", "Cardamom", "Honey", "Sugar", "Mapple sirup"].sort
# plants_and_fruits = ["Cherry", "Strawberry", "Raspberry", "Rosemary", "Basil", "Tarragon", "Cilantro", "Cucomber", "Lemon", "Lavender", "Mint", "Grapefruit", "Water Melon", "Tomatoe"].sort

# puts alcohol.length
# puts soda.length
# puts juice.length
# puts spice.length
# puts plants_and_fruits.length

# puts alcohol.length + soda.length + juice.length + spice.length + plants_and_fruits.length

# puts "creating alcohol"
# alcohol.each do |ingredient|
#   Ingredient.create(name: ingredient, category: "Alcohol")
# end
# puts Ingredient.where(category: "Alcohol").count

# puts "creating soda"
# soda.each do |ingredient|
#   Ingredient.create(name: ingredient, category: "Soda")
# end
# puts Ingredient.where(category: "Soda").count

# puts "creating juice"
# juice.each do |ingredient|
#   Ingredient.create(name: ingredient, category: "Juice")
# end
# puts Ingredient.where(category: "Juice").count

# puts "creating spice"
# spice.each do |ingredient|
#   Ingredient.create(name: ingredient, category: "Spice")
# end
# puts Ingredient.where(category: "Spice").count

# puts "creating plants and fruits"
# plants_and_fruits.each do |ingredient|
#   Ingredient.create(name: ingredient, category: "Veggies")
# end
# puts Ingredient.where(category: "Veggies").count

# Ingredient.create(name: "Other", category: "Other")

# puts "Finished creating ingredients"

require 'open-uri'

CocktailBar.destroy_all

puts CocktailBar.count

bar1 = CocktailBar.create(name: "Nice Cocktail Lounge Bar Berlin", address: "Sredzkistraße 14, Berlin", city: "Berlin")
bar2 = CocktailBar.create(name: "Green Door Bar", address: "Winterfeldtstraße 50, 10781 Berlin", city: "Berlin")
bar3 = CocktailBar.create(name: "Saphire Bar Berlin", address: "Bötzowstraße 31, 10407 Berlin", city: "Berlin")
bar4 = CocktailBar.create(name: "REDWOOD Bar Berlin", address: "Bergstraße 25, 10115 Berlin", city: "Berlin")

# fetch photos from local folder
bar1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/bar1.jpg')), filename: 'bar1')
bar2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/bar2.jpg')), filename: 'bar2')
bar3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/bar3.jpg')), filename: 'bar3')
bar4.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/bar4.jpg')), filename: 'bar4')

# fetch photos from url
# bar1.photo.attach(io: URI.open("https://www.ogsoundfx.com/ogcoding/photo_test/image#{rand(1..5)}.jpg"), filename: 'bar1')
# bar2.photo.attach(io: URI.open("https://www.ogsoundfx.com/ogcoding/photo_test/image#{rand(1..5)}.jpg"), filename: 'bar1')
# bar3.photo.attach(io: URI.open("https://www.ogsoundfx.com/ogcoding/photo_test/image#{rand(1..5)}.jpg"), filename: 'bar1')
# bar4.photo.attach(io: URI.open("https://www.ogsoundfx.com/ogcoding/photo_test/image#{rand(1..5)}.jpg"), filename: 'bar1')

puts CocktailBar.count
