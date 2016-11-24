class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :start_date, presence: true

  belongs_to :person
  belongs_to :company

end
