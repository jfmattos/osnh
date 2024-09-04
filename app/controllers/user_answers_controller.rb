class UserAnswersController < ApplicationController
  before_action :authenticate_user!
end
