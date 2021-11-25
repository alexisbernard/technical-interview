class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :plan
  has_one :payment
  validates_presence_of :start_on, :end_on
end
