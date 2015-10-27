class CatsController < ApplicationController
  def index
    @cats = Cat.order(:name)
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.create(place_params)

    redirect_to root_path
  end

  private
  def place_params
    params.require(:cat).permit(:name, :description)
  end
end
