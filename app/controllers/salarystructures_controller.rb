class SalarystructuresController < ApplicationController
	def index
		@structures = SalaryStructure.all
	end
	def new 
		@structure = SalaryStructure.new
	end
	def create
		@structure = SalaryStructure.new(structure_params)
		if @structure.save
			redirect_to salarystructures_path
		else 
			render "new"
		end
	end

private
	def structure_params
		params[:structure].permit(:basic, :da, :hra, :conveyonce, :special_allowance)
	end
end
