class CreatePayMonths < ActiveRecord::Migration
  def change
    create_table :pay_months do |t|
      t.string :name
      t.integer :no_of_days
      t.date :from_date
      t.date :to_date

      t.timestamps null: false
    end
  end
end
