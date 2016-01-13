class DashboardsController < ApplicationController

	def index 
		@employees = Employee.all
		@salarystructures = SalaryStructure.all
		@details = Detail.all
	end

end
