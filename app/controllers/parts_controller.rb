class PartsController < ApplicationController

  def index
    @parts = Part.all
  end

  def show
    @part = Part.find(params[:id])
    @user =  User.where(part_id:@part.id)
  end
end
