class RecipesController < ApplicationController
  def show
    @recipe = Recipe.first
  end
end
