class Information < ApplicationRecord
  belongs_to :user
  TYPE_MESSAGE = ["confirmation", "transport", "non assistance", "info générale"]
end
