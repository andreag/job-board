class Seeker < ActiveRecord::Base

  belongs_to :user
  has_one :address, :as => :addressable, :dependent => :destroy
  has_many :resumes

  accepts_nested_attributes_for :address 

  validates_length_of :description, :minimum => 50, :message => "please provide a brief description"
  
end
