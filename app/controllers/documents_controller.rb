class DocumentsController < ApplicationController
    before_action :set_folder, only: [:create, :destroy]
    
    def create
        @document = @folder.documents.new(document_params)
        if @document.save
            redirect_to folders_url, notice: "Document added successfully"
        else
            redirect_to folders_url, alert: "Unable to add document"
        end
    end
    
    def destroy
        @document = @folder.document.find(params[:id])
        @document.destroy
        redirect_to folders_url, notice: "Document deleted"
    end
    
    private
    def set_folder
        @folder = Folder.find(params[:folder_id])
    end
    
    def document_params
        params.require(:document).permit(:title, :document)
    end
end
