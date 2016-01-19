class AddLeaveHeadIdToLeaveAllotments < ActiveRecord::Migration
  def change
    add_column :leave_allotments, :leave_head_id, :integer
  end
end
