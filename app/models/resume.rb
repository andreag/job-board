class Resume < ActiveRecord::Base
  
  belongs_to :seeker
  has_attached_file :resume 
  has_many :documentations
  has_many :applicants, :through => :documentations
  
  validates_presence_of :name, :message => "cannot be blank. Please give this resume a name" 
  validates_attachment_presence :resume
  validates_attachment_size :resume, :less_then => 1.megabyte, :message => " is to large. Must be smaller then 1 Megabyte"
  validates_attachment_content_type :resume, :content_type => ['application/msword', 'application/pdf', 'application/x-pdf', 'text/rtf', 'application/wordperfect5.1',],
                              :message => ": Resume is not in accepted format. Supported types: pdf, msword, wordperfect, rich text format"

end
