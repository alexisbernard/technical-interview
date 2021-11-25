class Subscription < ApplicationRecord
  belongs_to :user
  has_one :payment
  validates_presence_of :start_on, :end_on
end
