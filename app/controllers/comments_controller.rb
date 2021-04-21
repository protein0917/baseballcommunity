class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/profiles/#{comment.profile.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, profile_id: params[:profile_id])
  end
end
