class Task < ActiveRecord::Base

  validates_presence_of :name

  has_many :activities
  has_many :visits, :through => :activities
end
