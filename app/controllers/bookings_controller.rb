class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    @booking.user = current_user
    if @booking.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
