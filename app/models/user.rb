class User < ApplicationRecord
  has_many :subscriptions
  has_one :credit_card

  validates_presence_of :name, :email
  has_secure_password
end
