class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to trip_path(comment.trip_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, trip_id: params[:trip_id])
  end
end
