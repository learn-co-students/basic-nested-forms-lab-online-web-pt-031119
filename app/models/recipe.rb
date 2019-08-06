class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients

  # def ingredients_attributes=(attributes)
  #   self.ingredients.build(attributes)
  # end

  # def ingredients_attributes
  #   self.ingredients
  # end
end
