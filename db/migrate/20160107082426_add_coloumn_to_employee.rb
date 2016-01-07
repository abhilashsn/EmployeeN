class AddColoumnToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :state_id, :integer
  end
end
