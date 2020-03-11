class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @contents = Content.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.create(content_params)
    if @content.save
      flash[:notice] = '投稿されました'
      redirect_to root_path
    else
      flash.now[:alert] = '投稿に失敗しました'
      render root_path
    end
  end

  def show
    @comment = Comment.new
    @comments = @content.comments.includes(:user).order("created_at DESC")
  end

  def edit
  end

  def update
    @content.update(content_params)
    flash[:notice] = '更新しました'
    redirect_to user_path(@content.user_id)
  end

  def destroy
    @content.destroy
    flash[:alert] = '削除しました'
    redirect_to user_path(@content.user_id)
  end

  def search
    @contents = Content.search(params[:keyword])
  end

  private
  def content_params
    params.require(:content).permit(:title, :music, :message).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:id])
  end
end
