#Mathieu Savard
#Créé hier
#Modifié Aujourd'hui (21/10/2021)

class AdministrationController < AdminController

    def index
    end

    def recettes
        @users = User.all
    end

    def recette
        @recette = Recette.find(params[:id])
    end



end
