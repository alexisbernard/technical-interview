class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price, null: false
      t.timestamps
    end
    add_column :subscriptions, :plan_id, :bigint, null: false
    add_foreign_key :subscriptions, :plans
    add_index :subscriptions, :plan_id
  end
end
