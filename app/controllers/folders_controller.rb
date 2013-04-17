class FoldersController < ApplicationController

  before_filter :get_user
  before_filter :get_folder, except: [:new, :create]
  before_filter :get_folders

  def index
  end

  def show
  end

  def new
    @folder = current_user.folders.new
  end

  def create
    @folder = @user.folders.new(params[:folder])

    if @folder.save
      redirect_to(user_folder_path(@user, @folder), notice: "Folder #{@folder.name} created.")
    else
      redirect_to(:back, error: "Sorry, something went wrong.")
    end
  end

  def edit
  end

  def update
    if @folder.update_attributes(params[:folder])
      redirect_to(user_folder_path(@user, @folder), notice: 'Folder updated.')
    else
      redirect_to(:back, error: 'Something went wrong.')
    end
  end

  def destroy
    @folder = @user.folders.find(params[:id]).destroy
    redirect_to(root_path, notice: 'Folder removed.')
  end

###########################
  private

  def get_user
    @user = current_user
  end

  def get_folder
    @folder = @user.folders.find(params[:id])
  end

  def get_folders
    @folders = @user.folders.all
  end

end