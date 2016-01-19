require 'rails_helper'

RSpec.describe "leave_applies/show", type: :view do
  before(:each) do
    @leave_apply = assign(:leave_apply, LeaveApply.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
