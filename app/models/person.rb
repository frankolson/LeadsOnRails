class Person < ActiveRecord::Base
  validates_presence_of :last_name

  has_many :sociable_memberships
  has_many :social_media_profiles, through: :sociable_memberships

end
