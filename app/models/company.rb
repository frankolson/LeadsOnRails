class Company < ActiveRecord::Base
  validates_presence_of :name

  has_many :social_media_profiles

end
