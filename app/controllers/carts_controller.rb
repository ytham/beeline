class CartsController < ApplicationController

  def create 
    @activity = Activity.find(params[:id])
    @cart = current_user.carts.create(user_id: current_user.id, activity_id: params[:id])
    if @cart.save
      respond_to do |format|
        format.html
      end
    else
      respond_to do |format|
        format.html
      end
    end
  end

end
