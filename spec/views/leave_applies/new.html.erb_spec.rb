require 'rails_helper'

RSpec.describe "leave_applies/new", type: :view do
  before(:each) do
    assign(:leave_apply, LeaveApply.new())
  end

  it "renders new leave_apply form" do
    render

    assert_select "form[action=?][method=?]", leave_applies_path, "post" do
    end
  end
end
