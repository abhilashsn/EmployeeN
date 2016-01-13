class RemoveColumnFromSalaryStructure < ActiveRecord::Migration
  def change
    remove_column :salary_structures, :da, :string
    remove_column :salary_structures, :hra, :string
  end
end
