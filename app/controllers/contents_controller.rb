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
  end

  def update
  end

  def destroy
  end


  private
  def content_params
    params.require(:content).permit(:title, :music, :message)
  end
end
