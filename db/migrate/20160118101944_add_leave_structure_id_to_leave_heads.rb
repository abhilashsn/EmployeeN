class AddLeaveStructureIdToLeaveHeads < ActiveRecord::Migration
  def change
    add_column :leave_heads, :leave_structure_id, :integer
  end
end
