class RestaurantsController < ApplicationController
  # lister tous les restaurants
  def index
    @restaurants = Restaurant.all
  end
  # afficher une seule entité de restaurant
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  # Générer un nouveau restaurant
  def new
    @restaurant = Restaurant.new
  end
  # Créer un nouveau restaurant dans la base de donnée
  def create
    restaurant = Restaurant.create(restaurant_params)
    redirect_to restaurant_path(restaurant)
  end
  # Editer un restaurant s'il existe
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  # mettre à jour les donnée d'un restaurant et le sauvegarder
  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end
  # détruire un restaurant de la base de donée
  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end
  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, :address, :rating)
  end

end
