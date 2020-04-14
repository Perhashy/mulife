class TagsController < ApplicationController
  def index
    if params[:tag_name]
      @contents = Content.tagged_with("#{params[:tag_name]}").page(params[:page]).per(5)
    end
  end
end
