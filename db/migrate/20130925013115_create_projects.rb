class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :budget
      t.text :description
      t.references :boat

      t.timestamps
    end
    add_index :projects, :boat_id
  end
end
