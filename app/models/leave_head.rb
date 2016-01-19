class LeaveHead < ActiveRecord::Base
validates_uniqueness_of :name
  has_many :employee_leave_heads, dependent: :destroy
  has_many :employees, :through => :employee_leave_heads
  
  belongs_to :leave_balance
  
  has_many :leave_allotments
  has_many :numbers

  has_many :leave_assignments, dependent: :destroy
  has_many :leave_structures, :through => :leave_assignments

end
