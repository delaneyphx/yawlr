class AddTimestampsToBoats < ActiveRecord::Migration
  def change
      add_column(:boats, :created_at, :datetime)
      add_column(:boats, :updated_at, :datetime)
  end
end
