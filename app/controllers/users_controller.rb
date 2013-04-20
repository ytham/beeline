class UsersController < ApplicationController

  def show
    if current_user
      @user = current_user
      @all_activities = Activity.all
      respond_to do |format|
        format.html
      end
    else
      redirect_to root_url
    end
  end

  def new
    if current_user
      redirect_to current_user
    end
  end

  def list
    @all_carts = current_user.carts.all
  end

end
