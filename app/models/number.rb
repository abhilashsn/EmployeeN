class Number < ActiveRecord::Base
	has_many :leave_allotments
	belongs_to :leave_head
end
