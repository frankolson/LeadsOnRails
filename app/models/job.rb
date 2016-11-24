class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :start_date, presence: true

  belongs_to :person
  belongs_to :company

  def duration_human_readble
    months = (Date.today.month - self.start_date.month).to_i
    years  = (Date.today.year - self.start_date.year).to_i

    if years == 0
      "#{months} months"
    else
      "#{years} years, #{months} months"
    end
  end
end
