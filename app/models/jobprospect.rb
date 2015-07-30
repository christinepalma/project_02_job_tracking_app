class Jobprospect < ActiveRecord::Base

  belongs_to :user
  has_one :resume
  has_one :coverletter



def self.jobstatus
  jobstatus = ['applied', 'interviewing', 'dead']
end

def jobstatus
  #blahblah
end


end
