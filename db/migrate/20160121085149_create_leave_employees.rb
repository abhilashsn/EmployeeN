class CreateLeaveEmployees < ActiveRecord::Migration
  def change
    create_table :leave_employees do |t|

      t.timestamps null: false
    end
  end
end
