class FoldersController < ApplicationController
  before_action :load_user, only: [:new, :show, :create, :edit, :update, :index , :folder_links]
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  def index
    @folders = @user.folders.pluck(:folder_name).uniq
  end

  def folder_links
    @folders = @user.folders.includes(:link).where(folder_name: params[:folder_name]).to_a
    @folders.reject! { |f| f.link_id == nil }
    @folder_name = params[:folder_name]
  end

  def show
  end

  def new
    @folder = @user.folders.build
    @folder.folder_name = ""
  end

  def edit
  end

  def create
    @folder = @user.folders.new(folder_params)
    if Folder.unique_folder?(@user, @folder)
      if @folder.save
        redirect_to show_folder_links_path(@user,@folder.folder_name), notice: 'Link was successfully added.'
      else
        render action: 'new'
      end
    else
      redirect_to user_folders_path, notice: "Link already in folder."
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
