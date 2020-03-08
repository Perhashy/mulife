class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @contents = @user.contents.page(params[:page]).per(5).order("created_at DESC")
  end
end
