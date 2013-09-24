class CreateBoatsTable < ActiveRecord::Migration
  def change
    create_table :boats do |t|
    	t.string :name
    	t.references :user

    	t.timestamps
    end
    add_index :boats, :user_id
  end
end
