class SocialMediaProfile < ActiveRecord::Base
  validates_presence_of :url

  belongs_to :company

end
