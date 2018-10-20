class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @request_problems = @user.request_management_problems
    @reviews = @user.reviews
    @review = @user.reviews.build
  end
end
