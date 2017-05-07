class Music < ApplicationRecord
  belongs_to :user
  validates :link, presence: true
  validates :name, presence: true
end
