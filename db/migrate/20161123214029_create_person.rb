class CreatePerson < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string  :first_name
      t.string  :last_name
      t.string  :work_phone
      t.string  :cell_phone
      t.string  :email
      t.text    :address
      t.boolean :male
      t.text    :notes
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
