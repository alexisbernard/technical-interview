class Payment < ApplicationRecord
  belongs_to :subscription
  validates_numericality_of :amount, greater_than_or_equal: 0
end
