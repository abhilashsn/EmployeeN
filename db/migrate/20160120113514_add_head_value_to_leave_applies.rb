class AddHeadValueToLeaveApplies < ActiveRecord::Migration
  def change
    add_column :leave_applies, :head_value, :integer
  end
end
