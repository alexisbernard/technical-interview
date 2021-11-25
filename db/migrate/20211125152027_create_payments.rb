class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.references :subscription, null: false, foreign_key: true, index: true
      t.string :type, null: false
      t.decimal :amount, null: false
      t.string :token
      t.timestamps
    end
  end
end
