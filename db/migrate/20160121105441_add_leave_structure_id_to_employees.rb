class AddLeaveStructureIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :leave_structure_id, :integer
  end
end
