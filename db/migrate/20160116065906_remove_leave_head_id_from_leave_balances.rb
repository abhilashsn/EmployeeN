class RemoveLeaveHeadIdFromLeaveBalances < ActiveRecord::Migration
  def change
    remove_column :leave_balances, :leave_head_id, :integer
  end
end
