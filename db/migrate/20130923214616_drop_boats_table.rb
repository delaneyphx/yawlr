class DropBoatsTable < ActiveRecord::Migration
   def up
    drop_table :boats
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
