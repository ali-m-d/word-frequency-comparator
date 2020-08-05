class SelectionsController < ApplicationController
  before_action :set_selection, only: [:show, :edit, :update, :destroy]

  # GET /selections
  # GET /selections.json
  def index
    @selections = Selection.all
  end

  # GET /selections/1
  # GET /selections/1.json
  def show
  end

  # GET /selections/new
  def new
    @selection = Selection.new
  end

  # GET /selections/1/edit
  def edit
  end

  # POST /selections
  # POST /selections.json
  def create
    if params[:selectees_array]
      @selection = Selection.new(user: current_user)
      JSON.parse(params[:selectees_array]).each do |selectee|
        @selection.selectees << selectee
      end
      
      @selection.save!
      redirect_to folders_url
    else
      @selection = Selection.last
      @selection.update(selection_params)
      @selection.save!
      
      if @selection.save
        @selection.selectees.each do |selectee|
          folder = Folder.find(selectee)
          folder_hash = {folder_id: folder.id, "name": folder.name, "docs": []}
          folder.documents.search(@selection.word).with_pg_search_highlight.each do |doc|
            folder_hash[:docs].push({"doc_id": doc.id, "title": doc.title, "highlights": doc.pg_search_highlight, "tally": doc.pg_search_highlight.split('<br>').length})
          end
          folder_tally = folder_hash[:docs].map{|doc| doc[:tally]}.sum
          folder_hash.store("tally", folder_tally)
          @selection.selectees_json.push(folder_hash)
        end
        
        @selection.save
        
        respond_to do |format|
            format.js
            format.html { redirect_to folders_url }
            format.json { head :no_content }
        end
      else
        redirect_to folders_url, alert: "Unable to perform comparison"
      end
    end
  end

  # PATCH/PUT /selections/1
  # PATCH/PUT /selections/1.json
  def update
    respond_to do |format|
      if @selection.update(selection_params)
        format.html { redirect_to @selection, notice: 'Selection was successfully updated.' }
        format.json { render :show, status: :ok, location: @selection }
      else
        format.html { render :edit }
        format.json { render json: @selection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selections/1
  # DELETE /selections/1.json
  def destroy
    @selection.destroy
    respond_to do |format|
      format.html { redirect_to selections_url, notice: 'Selection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection
      @selection = Selection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def selection_params
      params.require(:selection).permit(:new, :create, :show, :index, :destroy, :selectees, :word)
    end
end
