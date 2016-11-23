class CreateSocialMediaProfile < ActiveRecord::Migration[5.0]
  def change
    create_table :social_media_profiles do |t|
      t.string     :url

      t.timestamps null: false
    end
  end
end
