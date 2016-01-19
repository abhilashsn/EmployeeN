class LeaveAppend < ActiveRecord::Base
	belongs_to :leave_allotment
	belongs_to :leave_structure
end
