class TagsController < ApplicationController
  def index
    @tags = Content.tag_counts_on(:tags).order('count DESC')
    @contents = Content.tagged_with("#{params[:tag_name]}").page(params[:page]).per(5)
  end
end
