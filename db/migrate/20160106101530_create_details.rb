class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
    	t.string :designation
    	t.string :department
    	t.string :salary_structure

      t.timestamps null: false
    end
  end
end
