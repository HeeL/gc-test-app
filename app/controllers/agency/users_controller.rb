class Agency::UsersController < ApplicationController
  layout 'agency'

  def edit
    @user = find_user
  end

  def update
    @user = find_user
    if @user.update_attributes(params[:user]) 
      flash[:success] = "your profile has been saved"
      redirect_to "/"
    end
  end

  private

  def find_user
    User.find(params[:id])
  end
end