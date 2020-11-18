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

  def new
    @island = Island.find(params[:island_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.island = @island
    @booking.user = current_user
    if @booking.save
      redirect_to confirmation_booking_path(@island)
    else
      render :new
    end
  end

  def confirmation
    @island = Island.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_people)
  end


end
