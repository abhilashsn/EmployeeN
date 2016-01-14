class EmployeeLeaveHead < ActiveRecord::Base
  belongs_to :employee
  belongs_to :leave_head
end
