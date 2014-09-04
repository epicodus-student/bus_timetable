class AlterBus < ActiveRecord::Migration
  def change
    add_column :buses, :line_id, :integer
  end
end
