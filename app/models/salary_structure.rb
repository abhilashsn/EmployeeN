class SalaryStructure < ActiveRecord::Base
	belongs_to :employee

  validates_presence_of :conveyonce, if: :valid_conv


  def valid_conv
    salary_gross = (self.gross_salary.to_i * 10)/100
    if salary_gross > 1600
      self.conveyonce = 1600
    else
      self.conveyonce = (self.gross_salary.to_i * 10)/100
    end
  end


  def self.generate_calc(structur)
  		@structure = structur
      @structure.gross = (@structure.gross_salary*10)/100
			@structure.basic = (@structure.gross_salary*50)/100
      @structure.hra = (@structure.gross_salary*20)/100
	    @structure.special_allowance = (@structure.gross_salary) - (@structure.basic + @structure.hra  + @structure.conveyonce)
      @structure.conveyonce = (@structure.conveyonce)
	    #gross_sal = basic + da + hra;
  end


end


