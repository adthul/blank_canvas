class FoldersController < ApplicationController
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  def index
    @folders = Folder.all
  end

  def show
  end

  def new
    @folder = Folder.new
  end

  def edit
  end

  def create
    @folder = Folder.new(folder_params)

    if @folder.save
      redirect_to @folder, notice: 'Folder was successfully created.'
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
    redirect_to folders_url
  end

  private

    def set_folder
      @folder = Folder.find(params[:id])
    end

    def folder_params
      params.require(:folder).permit(:folder_name, :user_id, :link_id)
    end
end
