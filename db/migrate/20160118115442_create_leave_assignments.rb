class CreateLeaveAssignments < ActiveRecord::Migration
  def change
    create_table :leave_assignments do |t|
      t.integer :leave_structure_id
      t.integer :leave_head_id

      t.timestamps null: false
    end
  end
end
