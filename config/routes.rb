Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # lister les restaurants
  resources :restaurants, only: [:index, :show,]
  # get "restaurants" => "restaurants#index"
  # # afficher un restaurant
  # get "restaurants/:id" => "restaurants#show"
  # # creer un nouveau restaurant
  # get "restaurants/new" => "restaurants#new"
  # post "restaurants" => "restaurants#create"
  # # mettre à jour un restaurant
  # get "restaurants/:id" => 'restaurants#edit'
  # post "restaurants/:id" => 'restaurants#update'
  # # détruire un restaurant
  # delete 'restaurants/:id' => 'restaurants#destroy'
end
