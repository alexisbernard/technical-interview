(digital = Plan.find_or_initialize_by(name: "Digital")).update!(price: 10)
(explorateur = Plan.find_or_initialize_by(name: "Explorateur")).update!(price: 20)

(alice = User.find_or_initialize_by(email: "alice@test.com")).update!(name: "Alice", password: "password")
(bob = User.find_or_initialize_by(email: "bob@test.com")).update!(name: "Bob", password: "password")

alice.credit_card || CreditCard.create!(user: alice, token: "token", expired_on: Date.tomorrow)

alice.subscriptions.first || Subscription.create!(user: alice, plan: digital, start_on: Date.yesterday, end_on: Date.tomorrow, renew_on: Date.tomorrow)