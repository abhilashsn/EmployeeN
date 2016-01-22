class LeaveEmployeesController < ApplicationController

	def index
    @employee = Employee.find(params[:employee_id])
    @employees = Employee.all
    @leave_employee = LeaveEmployee.new
    @leave_heads = @employee.leave_allotments.first.leave_structure.leave_heads
    @leave_employees = @employee.leave_employees
    @details = Detail.all
	end

	def new
	@employee = Employee.find(params[:employee_id])
	@employee = @leave_structure.leave_heads
	@leave_employee = @employee.leave_employees
	@leave_head = LeaveHead.new
	end

	def create
		@employee = Employee.find(params[:employee_id])
		@leave_employee = LeaveEmployee.new(leave_employee_params)
		@leave_employee.employee_id = params[:employee_id]
		LeaveEmployee.no_of_leaves(@leave_employee)
		if @leave_employee.save
	      redirect_to employee_leave_employees_path(@employee)
	    else
	      render "new"
	    end
	end
end




private 
def leave_employee_params
	params[:leave_employee].permit(:value,:from_date,:to_date,:leave_head_id,:employee_id,:head_name)	
end
