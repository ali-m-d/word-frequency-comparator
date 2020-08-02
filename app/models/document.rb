class Document < ApplicationRecord
    include PgSearch::Model
    has_one_attached :pdf
    
    belongs_to :folder
    validates :title, presence: true
    validate :url_or_pdf
    
    
    def url_or_pdf
       errors.add(:url, "Either URL or PDF must be provided") unless url.present? || pdf.present? 
    end
    
    # validates :pdf, presence: true, unless: :url
    # validates :url, presence: true, unless: :pdf
    
    pg_search_scope :search, 
                    against: :text,
                    using: {
                        tsearch: {
                            prefix: true,
                            highlight: {
                                StartSel: '<span>',
                                StopSel: '</span>',
                                MaxWords: 10,
                                MinWords: 10,
                                ShortWord: 4,
                                HighlightAll: true,
                                MaxFragments: 3,
                                FragmentDelimiter: '<br>'
                            }
                        }
                    }
end
