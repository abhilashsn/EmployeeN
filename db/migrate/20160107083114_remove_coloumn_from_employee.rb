class RemoveColoumnFromEmployee < ActiveRecord::Migration
  def change
    remove_column :employees, :state, :string
  end
end
