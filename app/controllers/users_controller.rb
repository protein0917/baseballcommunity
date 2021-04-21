class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @profiles = user.profiles
  end
end
