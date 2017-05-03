class Information < ApplicationRecord
  belongs_to :user
  TYPE_MESSAGE = ["confirmation","non assistance", "info générale","confirmación", "no assistancia"]
end
