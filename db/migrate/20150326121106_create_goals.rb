class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.boolean :goal_met, default: false
      t.text :body
      t.integer :priority, default: 0, null: false

      t.timestamps null: false
    end
    add_foreign_key :users
  end
end
