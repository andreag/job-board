class Employer < ActiveRecord::Base

  belongs_to :user
  has_many :jobs
  has_one :address, :as => :addressable, :dependent => :destroy
  has_one :logo, :dependent => :destroy

  accepts_nested_attributes_for :address

  validates_presence_of :company_name
  
end
