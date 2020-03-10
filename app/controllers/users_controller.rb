class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @contents = @user.contents.page(params[:page]).per(5).order("created_at DESC")
    # @comments = @contents.comments
  end
end
