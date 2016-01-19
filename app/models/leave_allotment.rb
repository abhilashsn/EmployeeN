class LeaveAllotment < ActiveRecord::Base
	belongs_to :employee	
	belongs_to :leave_head
	belongs_to :number
	belongs_to :leave_structure
	has_many :leave_applies


end
