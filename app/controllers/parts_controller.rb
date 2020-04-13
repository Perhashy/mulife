class PartsController < ApplicationController

  def index
    @parts = Part.all
  end

  def show
  end
end
