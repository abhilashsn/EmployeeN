class SalaryStructure < ActiveRecord::Base
	belongs_to :employee

  def self.generate_calc(structur)
  		@structure = structur
			@structure.da = (@structure.basic*20)/100
	    @structure.hra = (@structure.basic*50)/100 
	    @structure.gross_salary = (@structure.basic) + (@structure.hra) + (@structure.da) 
	    #gross_sal = basic + da + hra;
   end
end

