class AddEmployeeIdToAllotLeaves < ActiveRecord::Migration
  def change
    add_column :allot_leaves, :employee_id, :integer
  end
end
