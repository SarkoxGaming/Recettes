#Mathieu Savard
#Créé hier (20/10/2021)

class PrincipaleController < ApplicationController

    def index
        @recettes = Recette.all.order(:titre)
    end


end
