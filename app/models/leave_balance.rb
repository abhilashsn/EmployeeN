class LeaveBalance < ActiveRecord::Base
 belongs_to :employee
 has_one :leave_head
end
