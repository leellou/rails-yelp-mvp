class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/1
  def show
    @reviews = @restaurant.reviews
    @review = Review.new
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant )
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
