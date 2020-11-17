class BookingsController < ApplicationController
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to island_path(@booking.island)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking.island)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_people)
  end
end
