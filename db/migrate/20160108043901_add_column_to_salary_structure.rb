class AddColumnToSalaryStructure < ActiveRecord::Migration
  def change
    add_column :salary_structures, :da, :integer
    add_column :salary_structures, :hra, :integer
  end
end
