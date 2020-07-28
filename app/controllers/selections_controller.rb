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
    new_selectees = {}
    if params[:selectees_array]
      @selection = Selection.new(user: current_user)
      JSON.parse(params[:selectees_array]).each do |selectee|
        new_selectees.store(selectee, 0)
      end
      @selection.selectees_json = new_selectees
      @selection.save!
      new_selectees.each_key do |selectee|
        @selection.selectees.create!(folder_id: selectee)
      end
      redirect_to folders_url
    else
      @selection = Selection.last
      @selection.update(selection_params)
      @selection.save!
      @results = {}
      
      if @selection.save
        @selection.selectees.each do |selectee|
          folder = Folder.find(selectee.folder_id)
          @results.store(folder.id, {"name": folder.name, "docs": []})
          folder.documents.search(@selection.word).with_pg_search_highlight.each do |doc|
            @results[folder.id][:docs].push({"doc_id": doc.id, "doc_title": doc.title, "tally": doc.pg_search_highlight.split('<br>').length})
            
          end
          # @results[folder.id].store("tally", @results[folder.id].docs.each{|doc| doc.tally}.sum)
        end  
        
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
      params.require(:selection).permit(:new, :create, :show, :index, :destroy, :selectees_array, :word)
    end
end
