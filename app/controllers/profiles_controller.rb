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

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(profile_params)
  end

  private
  def profile_params
    params.require(:profile).permit(:image, :position_id, :dexterity_id, :team, :age)
  end
end