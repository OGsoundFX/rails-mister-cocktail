puts "cleaning DB"
Ingredient.destroy_all
puts "creating ingredients"
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "ginger")
Ingredient.create(name: "tomato")
Ingredient.create(name: "gin")
Ingredient.create(name: "vodka")

Cocktail.create(name: "Manhattan")
Cocktail.create(name: "Gin Tonic")
Cocktail.create(name: "Paparazzi")
Cocktail.create(name: "WTF")

puts "Finished creating ingredients"
