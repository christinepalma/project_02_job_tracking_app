class User < ActiveRecord::Base

  has_secure_password
  validates :email, presence: true, uniqueness: true


  has_many :resumes
  has_many :jobprospects
  has_many :projects, :through => :resume
  has_many :coverletters, :through => :resume


end
