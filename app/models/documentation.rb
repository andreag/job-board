class Documentation < ActiveRecord::Base
  belongs_to :resume
  belongs_to :applicant
end
