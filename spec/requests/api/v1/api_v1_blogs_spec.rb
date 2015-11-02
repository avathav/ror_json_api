require 'rails_helper'

RSpec.describe "Api::V1::Blogs", type: :request do
  describe "GET /api_v1_blogs" do
    it "works! (now write some real specs)" do
      get api_v1_blogs_path
      expect(response).to have_http_status(200)
    end
  end
end
