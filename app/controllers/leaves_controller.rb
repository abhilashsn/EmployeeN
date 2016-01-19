class LeavesController < ApplicationController
	def index
	@leaves = Leave.all
	end
end
