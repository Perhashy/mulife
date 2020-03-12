class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    redirect_to content_path(params[:content_id])
    # respond_to do |format|
    #   format.html { redirect_to content_path(params[:content_id])  }
    #   format.json
    # end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to content_path(comment.content.id)
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, content_id: params[:content_id])
  end
end
