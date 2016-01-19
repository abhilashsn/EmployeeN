require 'rails_helper'

RSpec.describe "leave_applies/edit", type: :view do
  before(:each) do
    @leave_apply = assign(:leave_apply, LeaveApply.create!())
  end

  it "renders the edit leave_apply form" do
    render

    assert_select "form[action=?][method=?]", leave_apply_path(@leave_apply), "post" do
    end
  end
end
