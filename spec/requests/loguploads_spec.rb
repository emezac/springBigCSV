require 'rails_helper'

RSpec.describe "Loguploads", type: :request do
  describe "GET /loguploads" do
    it "works! (now write some real specs)" do
      get loguploads_path
      expect(response).to have_http_status(200)
    end
  end
end
