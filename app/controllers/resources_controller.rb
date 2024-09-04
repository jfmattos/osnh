class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
  end

  # def new
  #   @resource = Resource.new


  def show
    @resource = Resource.find(params[:id])
  end
end
