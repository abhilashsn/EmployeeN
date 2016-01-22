class RemoveHeadValueFromLeaveApplies < ActiveRecord::Migration
  def change
    remove_column :leave_applies, :head_value, :integer
  end
end
