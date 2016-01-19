class AddLeaveStructureIdToLeaveAllotments < ActiveRecord::Migration
  def change
    add_column :leave_allotments, :leave_structure_id, :integer
  end
end
