class SociableMembership < ActiveRecord::Base
  belongs_to :social_media_profile
  belongs_to :company, optional: true
  belongs_to :person,  optional: true
end
