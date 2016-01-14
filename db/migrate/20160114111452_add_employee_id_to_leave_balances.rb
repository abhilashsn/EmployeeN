class AddEmployeeIdToLeaveBalances < ActiveRecord::Migration
  def change
    add_column :leave_balances, :employee_id, :integer
  end
end
