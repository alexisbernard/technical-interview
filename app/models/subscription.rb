class Subscription < ApplicationRecord
  belongs_to :user
  validates_presence_of :start_on, :end_on
end
