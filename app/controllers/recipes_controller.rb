def new    
  @recipe = Recipe.new
  @recipe.ingredients.build
  @recipe.ingredients.build
end

def create
  @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
end

private

def recipe_params
  params.require(:recipe).permit(
    :title, ingredients_attributes: [
    :name,
    :quantity
    ]
  )
end