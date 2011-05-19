class Job < ActiveRecord::Base
  include AASM
  include ActionView::Helpers::NumberHelper

  belongs_to :employer
  belongs_to :profession
  has_one :address, :as => :addressable, :dependent => :destroy
  has_many :applicants

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :profession

  #
  # Validations
  #
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :deadline

  #
  # State Machine Setup
  #
  aasm_column :state
  aasm_initial_state :pending

  aasm_state :pending
  aasm_state :active
  aasm_state :inactive
  aasm_state :deleted


  aasm_event :activate do
    transitions :to => :active, :from => [:pending, :inactive, :deleted]
  end

  aasm_event :deactivate do
    transitions :to => :inactive, :from => [:active, :deleted]
  end
  
  aasm_event :remove do
    transitions :to => :deleted, :from => [:pending_payment, :inactive, :active]
  end

  # SEO Friendly URLS
  def to_param
    "#{id}-#{title.gsub(/[^a-z0-9]+/i, '-')}"
  end

  #
  # Named Scopes
  #
  def self.find_jobs(job_title, category, city)
    scope = Job.scoped({})
    scope = scope.scoped :include => "profession", :conditions => ["professions.profession = ?", category] unless category == ""

    scope = scope.scoped :include => "address", :conditions => ["addresses.city = ?", city] unless city == "" || city == "All of Ontario"
    
    like = "%#{job_title}%"
    scope = scope.scoped :conditions => ["title LIKE ?", like] unless job_title.nil? || job_title.size < 1
   
    scope
  end



  #
  # Instance Methods
  #
  def location
    location = ""
    location = self.address.city
    #location = self.address.state + ", " unless self.address.state.nil? or self.address.state.size < 2  
    #location += self.address.country
    location
  end

  def salary
    salary = (number_to_currency(self.salary_low / 100)) + " - " +  (number_to_currency(self.salary_high / 100))
    
  end
end

