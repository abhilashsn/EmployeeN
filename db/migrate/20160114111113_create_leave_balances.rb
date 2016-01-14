class CreateLeaveBalances < ActiveRecord::Migration
  def change
    create_table :leave_balances do |t|


      t.timestamps null: false
    end
  end
end
