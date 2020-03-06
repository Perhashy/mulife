class ContentsController < ApplicationController
  def index
    @contents = Content.all
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
  end

  def edit
    @content = Content.find(params[:id])
  end

  def update
    content = Content.find(params[:id])
    content.update(content_params)
    redirect_to content, method: :get
  end

  def destroy
    content = Content.find(params[:id])
    content.destroy
    redirect_to root_path
  end


  private
  def content_params
    params.require(:content).permit(:title, :music, :message)
  end
end
