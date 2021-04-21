class ProfilesController < ApplicationController
  before_action :set_profile, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def index
    @profiles = Profile.includes(:user).order("created_at DESC")
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
    @comment = Comment.new
    @comments = @profile.comments.includes(:user)
  end

  private

  def profile_params
    params.require(:profile).permit(:image, :position_id, :dexterity_id, :team, :age).merge(user_id: current_user.id)
  end

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end