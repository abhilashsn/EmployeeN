class AddGrossToSalaryStructures < ActiveRecord::Migration
  def change
    add_column :salary_structures, :gross, :string
  end
end
