class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :product_name
      t.string :company_name
      t.string :specification
      t.string :serial_number
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
