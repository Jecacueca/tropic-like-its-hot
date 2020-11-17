class IslandsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @islands = Island.all
  end
end
