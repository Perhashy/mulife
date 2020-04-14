class TagsController < ApplicationController
  def index
    @tags = Content.tag_counts_on(:tags).order('name DESC')
    @contents = Content.tagged_with("#{params[:tag_name]}").order("created_at DESC").page(params[:page]).per(5)
  end
end
