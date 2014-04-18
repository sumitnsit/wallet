class Transfer < ActiveRecord::Base
	belongs_to :credit_account, :class_name => 'Account', :foreign_key => :to_account
	belongs_to :debit_account, :class_name => 'Account', :foreign_key => :from_account

	before_save :transfer_amount
	before_destroy :revert_amount

	def transfer_amount
		credit_account.credit(amount)
		debit_account.debit(amount)
		transaction do
			credit_account.save!
			debit_account.save!
		end
	end

	def revert_amount
		credit_account.debit(amount)
		debit_account.credit(amount)
		transaction do
			credit_account.save!
			debit_account.save!
		end
	end

end
