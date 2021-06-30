class UsersController < ApplicationController
  before_action :room_search
  
  def account
    @user = current_user
  end
end
