#
class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @title = 'Accueil'
  end

  def user
  end
end
