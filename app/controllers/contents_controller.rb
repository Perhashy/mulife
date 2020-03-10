class ContentsController < ApplicationController
  def index
    @contents = Content.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @content = Content.new
  end

  def create
    Content.create(content_params)
    redirect_to root_path
  end

  def show
    @content = Content.find(params[:id])
    @comment = Comment.new
    @comments = @content.comments.includes(:user)
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    content.update(content_params)
    redirect_to user_path(content.user_id)
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to user_path(content.user_id)
  end


  private
  def content_params
    params.require(:content).permit(:title, :music, :message).merge(user_id: current_user.id)
  end
end
