class CreateSociableMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :sociable_memberships do |t|
      t.integer :company_id
      t.integer :person_id
      t.integer :social_media_profile_id

      t.timestamps null: false
    end
  end
end
