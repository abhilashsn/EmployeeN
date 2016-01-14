class CreateEmployeeLeaveHeads < ActiveRecord::Migration
  def change
    create_table :employee_leave_heads do |t|

      t.timestamps null: false
    end
  end
end
