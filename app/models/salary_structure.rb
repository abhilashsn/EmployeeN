class SalaryStructure < ActiveRecord::Base
	belongs_to :employee
	

	 def details
	 	da = basic * (15 / 100)
	 	puts da
	 end	
end
