class AddToDateToLeaveEmployees < ActiveRecord::Migration
  def change
    add_column :leave_employees, :to_date, :date
  end
end
