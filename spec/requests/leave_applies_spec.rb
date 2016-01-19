require 'rails_helper'

RSpec.describe "LeaveApplies", type: :request do
  describe "GET /leave_applies" do
    it "works! (now write some real specs)" do
      get leave_applies_path
      expect(response).to have_http_status(200)
    end
  end
end
