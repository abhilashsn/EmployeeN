class LeaveStructure < ActiveRecord::Base
	
	has_many :leave_assignments, dependent: :destroy
  	has_many :leave_heads, :through => :leave_assignments

  	has_many :leave_appends, dependent: :destroy
  	has_many :leave_allotments, :through => :leave_appends

  	has_many :employees

  	
end
