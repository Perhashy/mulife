class LikesController < ApplicationController
  before_action :set_variables, only: [:like, :unlike]

  def index
    @contents = Content.find(Like.group(:content_id).order('count(content_id) desc').limit(10).pluck(:content_id))
  end

  def like
    like = current_user.likes.new(content_id: @content.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(content_id: @content.id)
    like.destroy
  end

  private

  def set_variables
    @content = Content.find(params[:content_id])
    @id_name = "#like-link-#{@content.id}"
  end
end
