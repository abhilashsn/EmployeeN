class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :name
    	t.date :date_of_birth
    	t.string :gender
    	t.date :date_of_joining
    	t.text :address
    	t.string :state

      t.timestamps null: false
    end
  end
end
