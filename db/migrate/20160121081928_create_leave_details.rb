class CreateLeaveDetails < ActiveRecord::Migration
  def change
    create_table :leave_details do |t|

      t.timestamps null: false
    end
  end
end
