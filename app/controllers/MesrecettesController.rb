#Mathieu Savard
#Créé le 03/11/2021
class MesrecettesController < ApplicationController
    before_action :authenticate_user!

    def index
        @recettes = Recette.where(user: current_user)
    end

    def specs
        @recette = Recette.find(params[:id])

        unless @recette.user == current_user
            flash.alert = "Sorry, you don't have permissions to perform this action."
            redirect_to mesrecettes_path
        end
    end


end
