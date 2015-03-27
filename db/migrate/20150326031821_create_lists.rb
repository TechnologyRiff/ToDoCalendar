class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.boolean :private, default: true
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :lists, :users
  end
end
