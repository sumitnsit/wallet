class Account < ActiveRecord::Base
	scope :active, -> { where("active IS true") }	
	belongs_to :account_type
	belongs_to :currency



	def credit(credit_amount)
		self.init_amount += credit_amount
	end

	def debit(debit_amount)
		self.init_amount -= debit_amount
	end
end
