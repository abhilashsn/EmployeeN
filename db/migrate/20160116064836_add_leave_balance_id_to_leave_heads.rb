class AddLeaveBalanceIdToLeaveHeads < ActiveRecord::Migration
  def change
    add_column :leave_heads, :leave_balance_id, :integer
  end
end
