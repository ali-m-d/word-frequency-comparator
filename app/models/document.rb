class Document < ApplicationRecord
    include PgSearch
    
    attr_accessor :url, :pdf
    
    belongs_to :folder
    
    
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
