class SocialMediaProfile < ActiveRecord::Base
  validates_presence_of :url

  has_many :sociable_memberships

  attr_accessor :company_id
  attr_accessor :person_id
end
