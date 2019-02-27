class CakesController < ApplicationController
  def index
    @cakes = Cake.all
  end

  def show
    @cake = Cake.find(params[:id])
  end
end
