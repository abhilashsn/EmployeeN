class LeaveBalancesController < ApplicationController
    def index
      @employees = Employee.all
      @leaves = LeaveHead.all
      @leave_balance = LeaveBalance.all

    end

    def new
      @leave = LeaveBalance.new
    end

    def create
      @leave = LeaveBalance.create(leave_params)
      if @leave.save
        redirect_to leave_balances_path
      else
        render "new"
      end
    end

    def destroy
      @leave = LeaveBalance.find(params[:id])
      @leave.destroy
      respond_to do |format|
        format.html { redirect_to leave_balances_url, notice: 'leave head was successfully destroyed.' }
      end
    end

    def edit
      @leave = LeaveBalance.find(params[:id])
    end

  end
  private
  def leave_params
    #params[:leave_balance].permit(:balance_number,  :leave_head_id,employee_ids: [])
  end


