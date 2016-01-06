class AddEmployeeIdToSalaryStructures < ActiveRecord::Migration
  def change
    add_column :salary_structures, :employee_id, :integer
  end
end
