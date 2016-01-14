class AddEmployeeIdLeaveIdToEmployeeLeaveHeads < ActiveRecord::Migration
  def change
    add_column :employee_leave_heads, :employee_id, :intger
    add_column :employee_leave_heads, :leave_head_id, :integer
  end
end
