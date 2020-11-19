class UsersController < ApplicationController
  def show
    if !current_user
      redirect_to root_path
    end
    @bookings = Booking.all
    current_user.bookings = @bookings
    # @islands = Island.all
    # current_user.islands = @islands
  end
end
