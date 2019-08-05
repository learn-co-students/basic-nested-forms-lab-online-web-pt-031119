class Recipe < ActiveRecord::Base
  has_many :ingredients 

  def ingredients_attributes=(attributes)
    self.ingredients.build(attributes)
  end

  def ingredients_attributes
    self.ingredients
  end
end
