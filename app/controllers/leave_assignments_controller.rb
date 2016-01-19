class LeaveAssignmentsController < ApplicationController
	def index
    @leave_structure = LeaveStructure.find(params[:leave_structure_id])
    @leave_assignments = @leave_structure.leave_assignments
	end
	def new 
    @leave_structure = LeaveStructure.find(params[:leave_structure_id])
    @leave_assignment = LeaveAssignment.new
	end
	def create
	@leave_structure = LeaveStructure.find(params[:leave_structure_id])
    @leave_assignment = LeaveAssignment.new(leave_params)
    @leave_assignment.leave_structure_id = params[:leave_structure_id]    
    if @leave_assignment.save
      redirect_to leave_structure_leave_assignments_path(@leave_structure)
    else
      render "new"
    end
  end

end
private
  def leave_params
    params[:leave_assignment].permit(:employee_id,:leave_head_id,:leave_allotment_id,:leave_structure_id)
  end