class AddNumberToLeaveHeads < ActiveRecord::Migration
  def change
    add_column :leave_heads, :number, :integer
  end
end
