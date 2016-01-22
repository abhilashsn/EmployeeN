class AddLeaveDateToLeaveApplies < ActiveRecord::Migration
  def change
    add_column :leave_applies, :leave_date, :date
  end
end
