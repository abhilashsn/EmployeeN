class CreateLeaveAppends < ActiveRecord::Migration
  def change
    create_table :leave_appends do |t|
    	t.integer :leave_allotment_id
    	t.integer :leave_structure_id

      t.timestamps null: false
    end
  end
end
