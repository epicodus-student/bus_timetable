class DeleteAssignments < ActiveRecord::Migration
  def change
    drop_table :assignments
  end
end
