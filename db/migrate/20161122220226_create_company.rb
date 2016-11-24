class CreateCompany < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :number_of_employees
      t.string :product
      t.string :typical_sale_size
      t.string :website
      t.text   :mission
      t.text   :notes

      t.timestamps null: false
    end
  end
end
