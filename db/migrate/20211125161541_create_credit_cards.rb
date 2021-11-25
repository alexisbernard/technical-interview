class CreateCreditCards < ActiveRecord::Migration[7.0]
  def change
    create_table :credit_cards do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.date :expired_on, null: false
      t.string :token, null: false
      t.timestamps
    end
  end
end
