#Mathieu Savard
#Créé hier
#Modifié Aujourd'hui (21/10/2021)
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'principale#index'
  get '/mesrecettes', to: 'mesrecettes#index'
  get '/mesrecettes/:id', to: 'mesrecettes#specs'
  get '/recettes/:id', to: 'recettes#index'
  get '/admin', to: 'administration#index'
  get '/admin/recettes', to: 'administration#recettes'
  get '/admin/recettes/:id', to: 'administration#recette'

end
