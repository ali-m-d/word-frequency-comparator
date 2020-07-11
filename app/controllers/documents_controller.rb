class DocumentsController < ApplicationController
    require 'nokogiri'
    require 'net/http'
    # require 'capybara/poltergeist'
    # Capybara.javascript_driver = :poltergeist
    
    before_action :set_folder, only: [:new, :create, :destroy]

    # GET /folders/new
    def new
        @document = @folder.documents.new
    end

    def create
        # init new doc object
        @document = @folder.documents.new(document_params)
        # generate url compatible with Net::HTTP
        if @document.url
            escaped = URI.escape("http://boilerpipe-web.appspot.com/extract?url=#{@document.url}&output=text")
            uri = URI.parse(escaped)
            # for manual scraping:
                # html = Net::HTTP.get(uri)
                # text = Nokogiri::HTML(html).text
            # scrape text through boilerpipe api  
            text = Net::HTTP.get(uri).gsub("\n"," ")
            @document.text = text
        end
        
        if @document.save
            redirect_to folders_url, notice: "Document added successfully"
        else
            redirect_to folders_url, alert: "Unable to add document"
        end
    end
    
    def destroy
        @document = @folder.documents.find(params[:id])
        @document.destroy
        respond_to do |format|
          format.js
          format.html { redirect_to folders_url }
          format.json { head :no_content }
        end
    end
    
    private
    def set_folder
        @folder = Folder.find(params[:folder_id])
    end
    
    def document_params
        params.require(:document).permit(:title, :url)
    end
end
