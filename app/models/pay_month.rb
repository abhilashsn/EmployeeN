class PayMonth < ActiveRecord::Base

	def self.number_of_days(pay)
		@pay = pay
		@pay.no_of_days = (@pay.to_date - @pay.from_date)
	end
end
