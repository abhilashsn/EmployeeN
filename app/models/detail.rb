class Detail < ActiveRecord::Base
		belongs_to :employee
		validates_presence_of :designation, :department

end
