class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @price = 10
    @islands = Island.all
  end
end
