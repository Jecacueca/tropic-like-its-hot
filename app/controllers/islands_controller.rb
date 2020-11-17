class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to island_path, notice: 'Island was successfully created.'
    else
      render :new
    end
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :description)
  end
end
