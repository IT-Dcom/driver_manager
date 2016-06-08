#
class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    id = params[:id].to_i
    @user = id == 0 ? current_user : User.find(id)
  end
end
