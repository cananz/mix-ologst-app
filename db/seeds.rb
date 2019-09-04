# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  gin = Ingredient.find_or_create_by(name: "Gin")
  tonic = Ingredient.find_or_create_by(name: "Tonic Water")
  lime = Ingredient.find_or_create_by(name: "Lime Wedge")

  gt = Cocktail.find_or_create_by(name: "Gin & Tonic")
  gt.ingredients = [gin, tonic, lime]


