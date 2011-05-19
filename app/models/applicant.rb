class Applicant < ActiveRecord::Base

  belongs_to :seeker
  belongs_to :job
  
  has_many :documentations
  has_many :resumes, :through => :documentations

end
