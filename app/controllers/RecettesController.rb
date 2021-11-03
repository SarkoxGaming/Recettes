#Mathieu Savard
#Créé hier (21/10/2021)
class RecettesController < ApplicationController

    def index
        @recette = Recette.find(params[:id])
        @ingredients = @recette.ingredients
    end


end
