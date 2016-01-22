class LeaveAppliesController < ApplicationController
  before_action :set_leave_apply, only: [:show, :edit, :update, :destroy]

  # GET /leave_applies
  # GET /leave_applies.json
  def index
    @leave_allotment = LeaveAllotment.find(params[:leave_allotment_id])
    @leave_applies =   @leave_allotment.leave_applies

    @leave_apply = LeaveApply.new
    @leave_heads = @leave_allotment.leave_structure.leave_heads
  end

  # GET /leave_applies/1
  # GET /leave_applies/1.json
  def show
  end

  # GET /leave_applies/new
  def new
    @leave_apply = LeaveApply.new
    @leave_allotment = LeaveAllotment.find(params[:leave_allotment_id])
    @leave_heads = @leave_allotment.leave_structure.leave_heads
  end

  # GET /leave_applies/1/edit
  def edit
  end
  # POST /leave_applies
  # POST /leave_applies.json
  def create

    @leave_apply = LeaveApply.new(leave_apply_params)
    @leave_apply.leave_allotment_id = params[:leave_allotment_id]    

    respond_to do |format|
      if @leave_apply.save
        format.html {redirect_to leave_allotment_leave_applies_path }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /leave_applies/1
  # PATCH/PUT /leave_applies/1.json
  def update
    respond_to do |format|
      if @leave_apply.update(leave_apply_params)
        format.html { redirect_to @leave_apply, notice: 'Leave apply was successfully updated.' }
        format.json { render :show, status: :ok, location: @leave_apply }
      else
        format.html { render :edit }
        format.json { render json: @leave_apply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leave_applies/1
  # DELETE /leave_applies/1.json
  def destroy
    @leave_apply.destroy
    respond_to do |format|
      format.html { redirect_to leave_applies_url, notice: 'Leave apply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_apply
      @leave_apply = LeaveApply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_apply_params
      params[:leave_apply].permit(:name,:leave_date, :leave_allotment_id,:pay_month_id, :head_values => [] )
    end
end
