class FoldersController < ApplicationController
  before_action :load_user, only: [:new, :show, :create, :edit, :update, :index]
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  def index
    @folders = Folder.all
  end

  def show
  end

  def new
    @folder = @user.folders.build
  end

  def edit
  end

  def create
    @folder = @user.folders.new(folder_params)

    if @folder.save
      redirect_to user_folders_path(@user,@folder), notice: 'Folder was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @folder.update(folder_params)
      redirect_to @folder, notice: 'Folder was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @folder.destroy
    redirect_to user_folders_url
  end

  private

    def load_user
      @user = User.find(params[:user_id])
    end

    def set_folder
      @folder = Folder.find(params[:id])
    end

    def folder_params
      params.require(:folder).permit(:folder_name, :user_id, :link_id)
    end
end
