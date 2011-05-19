class Address < ActiveRecord::Base

  belongs_to :addressable, :polymorphic => true

  # Validations
  validates_presence_of :zipcode
  validates_presence_of :city



	def before_save
		self.country = "Canada"
	end

end
