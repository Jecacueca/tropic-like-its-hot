class BookingsController < ApplicationController
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to island_path(@booking.island)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
