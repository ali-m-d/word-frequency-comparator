class Selection < ApplicationRecord
  belongs_to :user
  has_many :selectees
end
