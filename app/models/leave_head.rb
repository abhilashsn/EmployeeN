class LeaveHead < ActiveRecord::Base
  has_many :employee_leave_heads, dependent: :destroy
  has_many :employees, :through => :employee_leave_heads
  belongs_to :leave_balance
end
