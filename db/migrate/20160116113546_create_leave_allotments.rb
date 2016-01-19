class CreateLeaveAllotments < ActiveRecord::Migration
  def change
    create_table :leave_allotments do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
