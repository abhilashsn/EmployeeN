class AddBalanceNumberToLeaveBalances < ActiveRecord::Migration
  def change
    add_column :leave_balances, :balance_number, :integer
  end
end
