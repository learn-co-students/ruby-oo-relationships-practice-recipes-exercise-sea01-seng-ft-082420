class Ingredient

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
       allergens = Allergy.all.map {|allergy| allergy.ingredient}
       hash =allergens.inject(Hash.new(0)){|total, e| total[e] +=1; total}
       hash.max_by {|k,v| v}
    end 
    
end
