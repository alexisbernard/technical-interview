class Plan < ApplicationRecord
  validates_presence_of :name
  validates_numericality_of :price, greater_than_or_equal: 0
end
