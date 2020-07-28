class Selection < ApplicationRecord
  attr_accessor :selectees_array
  belongs_to :user
  has_many :selectees
end
