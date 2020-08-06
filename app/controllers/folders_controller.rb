class FoldersController < ApplicationController
  before_action :set_folder, only: [:show, :edit, :update, :destroy]

  # GET /folders
  def index
    @folders = current_user.folders.all
  end

  # GET /folders/new
  def new
    @folder = current_user.folders.new
  end

  # POST /folders
  def create
    @folder = current_user.folders.new(folder_params)

    respond_to do |format|
      if @folder.save
        format.js
        format.html { redirect_to folder_url }
        format.json { head :no_content }
      else
        format.js { render 'errors.js.erb' }
        # format.json { render json: @folder.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @folder.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to folders_url }
      format.json { head :no_content }
    end
  end
  
  # def edit
  # end
  
  # def show
  # end
  
  # def update
  #   respond_to do |format|
  #     if @folder.update(folder_params)
  #       format.html { redirect_to @folder, notice: 'Folder was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @folder }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @folder.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  private
    def set_folder
      @folder = Folder.find(params[:id])
    end

    def folder_params
      params.require(:folder).permit(:name)
    end
end
