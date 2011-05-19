class Logo < ActiveRecord::Base

  belongs_to :employer
  has_attached_file :logo, :styles => {:thumb => "100x100>", :profile => "150x120>"} 
  
  validates_attachment_presence :logo
  validates_attachment_size :logo, :less_then => 1.megabyte, :message => " is to large. Must be smaller then 1 Megabyte"
  validates_attachment_content_type :logo, :content_type=>['image/jpeg', 'image/png', 'image/gif', 'image/bmp'],
                                    :message => ": Image must be JPEG, PNG or GIF image"



end
