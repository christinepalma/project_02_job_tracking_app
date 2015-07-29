class Jobprospect < ActiveRecord::Base

  belongs_to :user
  has_one :resume
  has_one :coverletter

  
end
