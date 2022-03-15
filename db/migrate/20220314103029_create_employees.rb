class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.integer :mobile_no
      t.date :joining_date
      t.string :address
      t.string :city
      t.integer :pincode
      t.string :role

      t.timestamps
    end
  end
end
