class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @request_problems = @user.request_management_problems
  end
end
