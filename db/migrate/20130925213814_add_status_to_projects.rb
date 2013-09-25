class AddStatusToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :status, :string
    add_column :projects, :completed_at, :datetime
  end
end
