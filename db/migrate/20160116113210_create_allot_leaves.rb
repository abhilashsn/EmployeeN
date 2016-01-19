class CreateAllotLeaves < ActiveRecord::Migration
  def change
    create_table :allot_leaves do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
