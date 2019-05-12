class UsersController < ApplicationController

# before_action :set_user, only: [:profile, :register, :update]

  def show
  end

  def edit
  end

  def update
    # @user.update(user_params)
    # redirect_to "/users/#{current_user.id}/profile"
  end

  def logout
  end

  def register
    @user = User.where(id: current_user.id)
  end

  def profile
    @user = User.where(id: current_user.id)
  end

  def lists
    @items = Item.where(user_id: current_user.id)
  end

  private

  # def set_user
  #   @user = User.where(params[:id])
  # end

  # def user_params
  #   params.permit(:nickname)
  # end

end
