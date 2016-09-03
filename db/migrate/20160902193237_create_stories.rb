class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.integer :user_id
      t.string :technology
      t.string :comparison
      t.text :explanation

      t.timestamps
    end
  end
end
