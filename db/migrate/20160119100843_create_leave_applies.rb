class CreateLeaveApplies < ActiveRecord::Migration
  def change
    create_table :leave_applies do |t|
    	t.string :name

      t.timestamps null: false
    end
  end
end
