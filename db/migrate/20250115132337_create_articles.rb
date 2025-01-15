class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :header, null: false
      t.string :body, null: false
      t.timestamps
    end
  end
end
