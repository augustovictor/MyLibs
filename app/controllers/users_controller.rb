class UsersController < ApplicationController

  skip_before_filter :authenticate_user!, only: [:new, :create]

  def show
    @user = current_user
    @folders = @user.folders

    respond_to do |format|
      format.html  # index.html.erb
      format.json  { render :json => @user }
    end
  end

end