class AddLeaveHeadIdToLeaveBalances < ActiveRecord::Migration
  def change
    add_column :leave_balances, :leave_head_id, :integer
  end
end
