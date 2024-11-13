class RestaurantsController < ApplicationController

  def review
    @review_content = @review.content
  end

  def rating
    @review_rating = @review.rating
  end
  def index
    @restaurant = Restaurant.all
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurants_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

end
