class AddEmployeeIdToLeaveAllotments < ActiveRecord::Migration
  def change
    add_column :leave_allotments, :employee_id, :integer
  end
end
