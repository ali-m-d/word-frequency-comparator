class Document < ApplicationRecord
    include PgSearch::Model
    
    attr_accessor :content_type
    
    belongs_to :folder
    validates :title, presence: true
    validate :url_or_pdf
    validate :content_type_pdf
    
    def url_or_pdf
       errors.add(:url, "either URL or PDF must be provided") unless url.present? || pdf.present? 
    end
    
    def content_type_pdf
       errors.add(:pdf, "local file must be in PDF format") if content_type != "application/pdf" && pdf.present?
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
