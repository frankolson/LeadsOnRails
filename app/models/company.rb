class Company < ActiveRecord::Base
  validates :name, presence: true

  has_many :jobs
  has_many :people, through: :jobs
  has_many :sociable_memberships
  has_many :social_media_profiles, through: :sociable_memberships

end
