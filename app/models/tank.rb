class Tank < ApplicationRecord
  belongs_to :user
  has_many :records
  validates :title, presence: true
  
  
end