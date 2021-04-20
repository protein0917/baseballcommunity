class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params)
  end

  def destroy
    profile = Profile.find(params[:id])
    profile.destroy
  end

  private
  def profile_params
    params.require(:profile).permit(:image, :position, :dexterity, :team, :age)
  end
end