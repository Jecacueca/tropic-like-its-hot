class IslandsController < ApplicationController
  def show
    @island = Island.find(params[:id])
  end

  private

  def island_params
    params.require(:island).permit(:name, :address, :description)
  end

end
