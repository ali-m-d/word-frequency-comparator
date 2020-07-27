class Document < ApplicationRecord
    include PgSearch
    
    belongs_to :folder
    
    pg_search_scope :search, against: [:text]
end
