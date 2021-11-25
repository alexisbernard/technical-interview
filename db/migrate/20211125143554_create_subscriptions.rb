class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true, index: true
      t.date :start_on
      t.date :end_on
      t.date :renew_on
      t.timestamps
    end
  end
end
