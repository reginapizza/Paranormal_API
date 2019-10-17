require 'rails_helper'

RSpec.describe "Encounters", type: :request do
  describe "GET /encounters" do
    it "works! (now write some real specs)" do
      get encounters_path
      expect(response).to have_http_status(200)
    end
  end
end
