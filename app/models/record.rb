class Record < ApplicationRecord
  belongs_to :user
  belongs_to :tank
  validates :custom_date, presence: true
  validates :nh4, numericality: {allow_nil: true}
  validates :no2, numericality: {allow_nil: true}
  validates :no3, numericality: {allow_nil: true}
  validates :ph, numericality: {allow_nil: true}
  validates :gh, numericality: {allow_nil: true}
  validates :kh, numericality: {allow_nil: true}

end