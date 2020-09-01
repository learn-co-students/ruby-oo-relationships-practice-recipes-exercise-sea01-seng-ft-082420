require 'bundler'
require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'

soup = Recipe.new("Tomato Basil")
salad = Recipe.new("Greek Salad")
pie = Recipe.new("Apple Pie")

sally = User.new("Sally")
tom = User.new("Tom")
amy = User.new("Amy")


rc1 = RecipeCard.new(sally, soup, Time.now,5)
rc2 = RecipeCard.new(amy, salad, Time.now, 4)
rc3 = RecipeCard.new(tom, salad, Time.now, 5)
rc4 = RecipeCard.new(sally, salad, Time.now, 3)

tomato = Ingredient.new("Tomato")
basil = Ingredient.new("Basil")
apple = Ingredient.new("Apple")
butter = Ingredient.new("Butter")
olives = Ingredient.new("Olives")
cream = Ingredient.new("Cream")


ri1 = RecipeIngredient.new(soup, tomato)
ri2 = RecipeIngredient.new(pie, apple)
ri3 = RecipeIngredient.new(salad, olives)
ri4 = RecipeIngredient.new(soup, cream)
 
a1 = Allergy.new(tom, apple)
a2 = Allergy.new(amy, cream)
a3 = Allergy.new(tom, cream)




binding.pry 
0