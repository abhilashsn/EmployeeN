class DetailsController < ApplicationController
	def index
		@details = Detail.all
	end
	def new 
		@detail = Detail.new
	end
	def create
		@detail = Detail.new(detail_params)
		if @detail.save
			redirect_to details_path
		else 
			render "new"
		end
	end
	def update
    respond_to do |format|
      if @detail.update(detail_params)
        format.html { redirect_to @detail, notice: 'detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail }
      else
        format.html { render :edit }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apples/1
  # DELETE /apples/1.json
  def destroy
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to details_url, notice: 'employee detail was successfully destroyed.' }
      format.json { head :no_content }
    end
    def show
      @detail = Detail.find(params[:id])
    end
    def edit
    	@detail = Detail.find(params[:id])
	end


 end


	private
	def detail_params
		params[:detail].permit(:designation, :department, :salary_structure)
	end
end

