class Employee < ActiveRecord::Base
	has_many :details
	has_many :salary_structures
	belongs_to :state

	   validates_presence_of :name,  :message => "can't be blank"
	   validates_presence_of :address,  :message => "can't be blank"
	   validates_presence_of :gender,  :message => "can't be blank"

	

	
end
