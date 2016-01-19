class AddToDateToLeaveAllotments < ActiveRecord::Migration
  def change
    add_column :leave_allotments, :to_date, :date
  end
end
