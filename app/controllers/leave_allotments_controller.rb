class LeaveAllotmentsController < ApplicationController
  def index
  	#@employee = Employee.find(params[:employee_id])
   # @leave_allotments = @employee.leave_allotments
    @employee = Employee.all
    @leave_allotments = LeaveAllotment.all
    @leave_allotment = LeaveAllotment.new
  end
  def new
    #@employee = Employee.find(params[:employee_id])  
    @leave_allotment = LeaveAllotment.new
  end

  def create 
    @leave_allotment = LeaveAllotment.new(leave_params)
    #@leave_head = LeaveHead.find(params[:id])
   # @leave_allotment.employee_id = params[:employee_id] 
    if @leave_allotment.save

      redirect_to leave_allotments_path, notice: "Successfully added new leave structure."
    else
      render "new"
    end
  end
  def show
  	@leave = LeaveAllotment.find(params[:id])
  end
end


private

	def leave_params
		#params.require[:leave_allotment].permit(:name,:employee_id,:leave_head_id,leave_structure_ids: [])
    params[:leave_allotment].permit(:name,:employee_id,:leave_head_id,:leave_structure_id)

  end