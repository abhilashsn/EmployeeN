require 'rails_helper'

RSpec.describe "leave_applies/index", type: :view do
  before(:each) do
    assign(:leave_applies, [
      LeaveApply.create!(),
      LeaveApply.create!()
    ])
  end

  it "renders a list of leave_applies" do
    render
  end
end
