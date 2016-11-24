class SocialMediaProfile < ActiveRecord::Base
  validates :url, presence: true

  has_many :sociable_memberships

  attr_accessor :company_id
  attr_accessor :person_id

end
