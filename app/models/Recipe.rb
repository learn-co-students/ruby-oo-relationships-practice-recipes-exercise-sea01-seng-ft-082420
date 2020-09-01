class Recipe
  attr_reader :title
  @@all = []

  def initialize(title)
    @title = title 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def self.most_popular
    self.all.max_by {|recipe| RecipeCard.all.select {|card|card.recipe == recipe}.count}
  end

  def users
    RecipeCard.all.select {|info| info.recipe ==self}.map {|info| info.user} 
  end 

  def ingredients
    RecipeIngredient.all.select {|item| item.recipe == self} .map {|i| i.ingredient}
  end

  def add_ingredients(ingredient)
    RecipeIngredient.new(self, ingredient)
  end 

end 