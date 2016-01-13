class SalaryStructuresController < ApplicationController

	def index
		@structures = SalaryStructure.all
	end
	def new 
		@structure = SalaryStructure.new
	end
	def create
		@structure = SalaryStructure.new(structure_params)
		SalaryStructure.generate_calc(@structure)
		if @structure.save
			redirect_to salary_structures_path
		else 
			render "new"
		end
	end

private
	def structure_params
		params[:salary_structure].permit(:basic, :conveyonce, :special_allowance,:employee_id)
	end
end
