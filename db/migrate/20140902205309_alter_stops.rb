class AlterStops < ActiveRecord::Migration
  def change
    remove_column :stops, :id
  end
end
