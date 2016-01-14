class RemoveEmployeeIdFromLeaveHeads < ActiveRecord::Migration
  def change
    remove_column :leave_heads, :employee_id, :integer
  end
end
