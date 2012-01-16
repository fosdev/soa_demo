class Activity < ActiveRecord::Base

  belongs_to :task
  belongs_to :visit
end
