class AddFromDateToLeaveEmployees < ActiveRecord::Migration
  def change
    add_column :leave_employees, :from_date, :date
  end
end
