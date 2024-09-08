class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  project_from_forgery
end
