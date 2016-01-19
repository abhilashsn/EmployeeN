class ApplyLeavesController < ApplicationController
  def index 
    @apply_leaves = ApplyLeave.all
  end
end
