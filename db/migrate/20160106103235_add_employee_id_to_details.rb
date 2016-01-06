class AddEmployeeIdToDetails < ActiveRecord::Migration
  def change
    add_column :details, :employee_id, :integer
  end
end
