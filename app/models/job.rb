class Job < ApplicationRecord
 
 
  has_many :shift_jobs

  validates_presence_of :name

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
  scope :alphabetical, -> { order('name') }
  
  
end
