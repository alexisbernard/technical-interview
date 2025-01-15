class Payment::Stripe < Payment
  validates_presence_of :token
end
