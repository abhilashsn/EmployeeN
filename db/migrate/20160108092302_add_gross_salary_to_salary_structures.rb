class AddGrossSalaryToSalaryStructures < ActiveRecord::Migration
  def change
    add_column :salary_structures, :gross_salary, :integer
  end
end
