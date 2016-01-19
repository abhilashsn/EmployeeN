class LeaveAssignment < ActiveRecord::Base
	belongs_to :leave_head
	belongs_to :leave_structure

 	
end
