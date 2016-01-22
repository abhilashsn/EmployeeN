class PayMonthsController < ApplicationController
	def index
		@pays = PayMonth.all
		@pay = PayMonth.new
	end
	def new 
		@pay = PayMonth.new
	end
	def create
		@pay = PayMonth.new(pay_params)
		PayMonth.number_of_days(@pay)
		if @pay.save
			redirect_to pay_months_path
		else
			render "new"
		end
	end
	def destroy
		@pay = PayMonth.find(params[:id])
    	@pay.destroy
      	redirect_to pay_months_url, {notice: 'pay_month was successfully destroyed.' }
    end
  end



private
def pay_params
	params[:pay_month].permit(:name,:no_of_days,:from_date,:to_date)
end
