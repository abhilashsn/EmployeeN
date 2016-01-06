class Employee < ActiveRecord::Base
	has_many :details
	has_many :salary_structures
end
