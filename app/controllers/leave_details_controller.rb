class LeaveDetailsController < ApplicationController
	def index
		@employees = Employee.all
		@details = Detail.all
		@leave_employees = LeaveEmployee.all
	end
end
