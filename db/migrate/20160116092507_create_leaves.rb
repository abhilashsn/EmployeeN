class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
