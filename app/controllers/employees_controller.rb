class EmployeesController < ApplicationController

  before_action :set_params, only: [:show,:edit,:destroy,:add_leave]

	def index
    @employees = Employee.listing_employees
    @salarystructure = SalaryStructure.all
     respond_to do |format|
      format.html
      format.csv { send_data @employees.to_csv }
      format.xls
    end
  end

   def show
   end 
  
	def new 
		@employee = Employee.new
	end

	def create
		@employee = Employee.new(employee_params)
		if @employee.save
			redirect_to employees_path
		else
			render "new"
		end
	end

	def update
    @employee = Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
        redirect_to employees_path
      else
         render :edit
      end

  end

  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'employee was successfully destroyed.' }
    end
  end

  def add_leave
    @leave = @employee.leave_heads
  end


  def edit
  end

	private
  def set_params
    @employee = Employee.find(params[:id])
  end

	def employee_params
		params[:employee].permit(:name, :date_of_birth, :gender, :date_of_joining,:address, :state_id, leave_head_ids: [ ])
	end
end
