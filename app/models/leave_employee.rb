class LeaveEmployee < ActiveRecord::Base
	belongs_to :employee



	def self.no_of_leaves(employee)
		@leaveemp = employee
		@leaveemp.value = (@leaveemp.to_date - @leaveemp.from_date).to_i
	end

	def self.leave_head_count()
		@cl_count = LeaveEmployee.where("head_name=?","CL").count
		@el_count = LeaveEmployee.where("head_name =?","EL").count
		@sl_count = LeaveEmployee.where("head_name =?","SL").count
	end
	

end
