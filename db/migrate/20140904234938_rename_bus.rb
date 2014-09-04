class RenameBus < ActiveRecord::Migration
  def change
    rename_table :buses, :autobuses
  end
end
