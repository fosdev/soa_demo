class Visit < ActiveRecord::Base

  validates_presence_of :name, :day

  has_many :activities
  has_many :visits, :through => :activities
end
