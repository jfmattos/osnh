class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR details ILIKE :query"
      @resources = @resources.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  # def new
  #   @resource = Resource.new


  def show
    @resource = Resource.find(params[:id])
  end
end
