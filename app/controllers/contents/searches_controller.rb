class Contents::SearchesController < ApplicationController
  def index
    redirect_to root_path if params[:keyword] == ""

    @contents = Content.where('title LIKE(?) or message LIKE(?)', "%#{params[:keyword]}%", "%#{params[:keyword]}%").order("created_at DESC").page(params[:page]).per(5)
  end
end
