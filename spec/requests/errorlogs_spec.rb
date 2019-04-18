require 'rails_helper'

RSpec.describe "Errorlogs", type: :request do
  describe "GET /errorlogs" do
    it "works! (now write some real specs)" do
      get errorlogs_path
      expect(response).to have_http_status(200)
    end
  end
end
