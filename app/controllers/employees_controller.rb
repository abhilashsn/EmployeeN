class EmployeesController < ApplicationController
	def index
		@employees = Employee.all
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
    respond_to do |format|
      if @apple.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apples/1
  # DELETE /apples/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'employee was successfully destroyed.' }
      format.json { head :no_content }
    end
    def show
      @employee = Employee.find(params[:id])
    end
    def edit
    	@employee = Employee.find(params[:id])
	end


 end


	private
	def employee_params
		params[:employee].permit(:name, :date_of_birth, :gender, :date_of_joining,:address,:state)
	end
end
