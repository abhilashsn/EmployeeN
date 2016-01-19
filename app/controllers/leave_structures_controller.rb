class LeaveStructuresController < ApplicationController
	def index
		@leave_structures = LeaveStructure.all
		@leave_structure = LeaveStructure.new
	end
	def new 
		@leave_structure = LeaveStructure.new
	end
	def create
		@leave_structure = LeaveStructure.new(leave_params)
		if @leave_structure.save
			redirect_to leave_structures_path
		else
			render "new"
		end
	end


end



private 

def leave_params
    params.require(:leave_structure).permit(:name)

end