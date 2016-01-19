class AddLeaveAllotmentIdToLeaveApplies < ActiveRecord::Migration
  def change
    add_column :leave_applies, :leave_allotment_id, :integer
  end
end
