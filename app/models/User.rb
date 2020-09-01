class User
  attr_reader :name 
  @@all = []

  def initialize(name)
    @name = name  
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def recipes
    RecipeCard.all.select {|item| item.user == self}.map {|n| n.recipe}
  end

  def add_recipe_card (recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end 

  def allergens
    Allergy.all.select {|allergy| allergy.user == self}
  end 

 
end 

