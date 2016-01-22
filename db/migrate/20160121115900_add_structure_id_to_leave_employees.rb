class AddStructureIdToLeaveEmployees < ActiveRecord::Migration
  def change
    add_column :leave_employees, :structure_id, :integer
  end
end
