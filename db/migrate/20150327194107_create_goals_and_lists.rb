class CreateGoalsAndLists < ActiveRecord::Migration
  def change
    create_table :goals_and_lists do |t|
      t.integer :list_id
      t.integer :goal_id
      t.timestamps
    end

  add_index :lists, :id, unique: true
  add_index :goals, :id, unique: true
  add_index :goals_and_lists, :id, unique: true
  add_index :goals_and_lists, :list_id
  add_index :goals_and_lists, :goal_id
  end
end
