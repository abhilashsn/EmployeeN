class CreateSalaryStructures < ActiveRecord::Migration
  def change
    create_table :salary_structures do |t|
    	t.string :basic
    	t.string :da
    	t.string :hra
    	t.string :conveyonce
    	t.string :special_allowance

      t.timestamps null: false
    end
  end
end
