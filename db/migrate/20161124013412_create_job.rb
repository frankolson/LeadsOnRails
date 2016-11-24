class CreateJob < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string   :title
      t.date     :start_date
      t.integer  :company_id
      t.integer  :person_id

      t.timestamps null: false
    end
  end
end
