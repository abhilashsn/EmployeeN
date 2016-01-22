class AddHeadNameToLeaveEmployees < ActiveRecord::Migration
  def change
    add_column :leave_employees, :head_name, :string
  end
end
