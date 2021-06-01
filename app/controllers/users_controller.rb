class UsersController < ApplicationController
  def show
    if !current_user
      redirect_to root_path
    end
#     @bookings = Booking.all << This wasn't doing anything
    @bookings = current_user.bookings
    @islands = current_user.islands
end
