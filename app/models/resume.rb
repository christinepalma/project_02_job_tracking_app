class Resume < ActiveRecord::Base

  belongs_to :user
  has_many :projects
  belongs_to: jobprospect

  
end
