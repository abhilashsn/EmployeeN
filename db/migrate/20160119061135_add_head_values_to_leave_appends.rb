class AddHeadValuesToLeaveAppends < ActiveRecord::Migration
  def change
    add_column :leave_appends, :head_value, :string
  end
end
