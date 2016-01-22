class AddColumnToLeaveApplies < ActiveRecord::Migration
  def change
    add_column :leave_applies, :head_values, :string
  end
end
