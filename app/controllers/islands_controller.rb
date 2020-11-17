class IslandsController < ApplicationController
  before_action :find_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @islands = Island.all
  end

  def show
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    if @island.save
      redirect_to islands_path, notice: 'Island was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @island.update(island_params)
    redirect_to island_path, notice: 'Island was successfully updated.'
  end

  def destroy
    @island.delete
    redirect_to islands_path
  end

  private

  def find_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :address, :description)
  end
end
