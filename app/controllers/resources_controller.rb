class ResourcesController < ApplicationController
  before_action :set_resource, only: :show

  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.new
  end

  private

  def set_resource
    @resource = Resource.find(params[:id])
  end

  def resource_params
    params.require(:resource).permit(:name, :details)
  end
end
