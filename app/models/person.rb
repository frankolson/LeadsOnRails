class Person < ActiveRecord::Base
  validates :last_name, presence: true

  has_many :jobs
  has_many :companies, through: :jobs
  has_many :sociable_memberships
  has_many :social_media_profiles, through: :sociable_memberships

end
