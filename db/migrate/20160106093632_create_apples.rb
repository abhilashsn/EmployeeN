class CreateApples < ActiveRecord::Migration
  def change
    create_table :apples do |t|

      t.timestamps null: false
    end
  end
end
