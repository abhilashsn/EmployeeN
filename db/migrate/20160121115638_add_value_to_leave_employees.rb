class AddValueToLeaveEmployees < ActiveRecord::Migration
  def change
    add_column :leave_employees, :value, :string
  end
end
