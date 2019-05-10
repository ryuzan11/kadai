class UsersController < ApplicationController

  def show
  end

  def edit
  end

  def logout
  end

  def register
  end

  def profile
  end

  def lists
    @items = Item.where(user_id: current_user.id)
  end

end
