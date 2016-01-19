class LeaveHeadsController < ApplicationController
  def index
    @employee = Employee.find(params[:employee_id])
    @leave_heads = @employee.leave_heads
   # @leave_allotments = @leave_heads.leave_allotment
  #  @leave_allotment = @leave_heads.@leave_allotments
    @leave_head = LeaveHead.new
 end

  def new
    @leave_head = LeaveHead.new
    @employee = Employee.find(params[:employee_id])  
  end

  def create
    @leave_head = LeaveHead.new(leave_params)
    @leave_head.employee_id = params[:employee_id]    
    if @leave.save
      redirect_to employee_leave_head_path(@leave_head.employee_id,@leave), notice: "Successfully added new milestone."
    else
      render "new"
    end
  end

  def destroy
    @leave = LeaveHead.find(params[:id])
    @leave.destroy
    respond_to do |format|
        format.html  { redirect_to employee_leave_head_path(@milestone.project_id), notice: "Successfully milestone deleted" }
    end
  end

  def edit
  @leave = LeaveHead.find(params[:id])
  end

end
private
  def leave_params
    params[:leave_head].permit(:name,:employee_id,:leave_head_id,:leave_allotment_id)
  end

