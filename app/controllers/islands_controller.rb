class IslandsController < ApplicationController
  before_action :find_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query]
      @islands = Island.search_by_name_description(params[:query])
    else
      @islands = Island.all
    end

    @markers = @islands.geocoded.map do |island|
      {
        lat: island.latitude,
        lng: island.longitude
      }
    end
  end

  def home
    @island = Island.all
  end

  def show
    @booking = Booking.new
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
    @island.destroy
    redirect_to islands_path
  end

  private

  def find_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :address, :description, :price, photos: [])
  end
end
