class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :bus_id
      t.integer :line_id
    end
  end
end
