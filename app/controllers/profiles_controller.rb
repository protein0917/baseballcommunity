class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :show]

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
  end

  def update
    profile = Profile.find(params[:id])
    profile.update(profile_params)
  end

  def show
  end

  private

  def profile_params
    params.require(:profile).permit(:image, :position_id, :dexterity_id, :team, :age)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end
end