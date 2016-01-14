class LeaveHeadsController < ApplicationController
  def index
    @leave = LeaveHead.new
    @leaves = LeaveHead.all
  end

  def new
    @leave = LeaveHead.new
  end

  def create
    @leave = LeaveHead.create(leave_params)
    if @leave.save
      redirect_to leave_heads_path
    else
      render "new"
    end
  end

  def destroy
    @leave = LeaveHead.find(params[:id])
    @leave.destroy
    respond_to do |format|
      format.html { redirect_to leave_heads_url, notice: 'leave head was successfully destroyed.' }
    end
  end

  def edit
  @leave = LeaveHead.find(params[:id])
  end

end
private
  def leave_params
    params[:leave_head].permit(:name)
  end

