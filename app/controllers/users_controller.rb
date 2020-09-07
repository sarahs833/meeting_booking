class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def edit
    @user = current_user
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @user = current_user
    @user.update(user_params)
    if @user.save
      flash[:notice] = 'user info has been updated'
      redirect_to root_path
    else
      flash[:alert] = 'something went wrong'
      render action:edit
    end
  end



  private

  def user_params
    params.require(:user).permit(:username,:email,:image)
  end

end
