class Transport < ApplicationRecord
  belongs_to :user
  validates :kind, presence: true
  validates :place_number, presence: true
end
