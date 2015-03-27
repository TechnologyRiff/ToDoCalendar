class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.boolean :completed, default: false
      t.references :list, index: true
      t.integer :priority, default: 0, null: false
      t.integer :difficulty, default: 0, null: false
      t.text :detail

      t.timestamps null: false
    end
    add_foreign_key :items, :lists
  end
end
