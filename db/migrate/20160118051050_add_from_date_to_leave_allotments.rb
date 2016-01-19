class AddFromDateToLeaveAllotments < ActiveRecord::Migration
  def change
    add_column :leave_allotments, :from_date, :date
  end
end
