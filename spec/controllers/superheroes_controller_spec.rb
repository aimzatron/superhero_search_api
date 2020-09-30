require "rails_helper"

RSpec.describe SuperheroesController, type: :controller do
  describe "GET search" do
    it "returns a 200" do
      VCR.use_cassette("superhero_api_controller_spec") do
        get :search, params: { name: "superman" }
        expect(response).to have_http_status(:ok)
      end
    end

    it "returns JSON including correct name" do
      VCR.use_cassette("superhero_api_controller_spec") do
        get :search, params: { name: "superman" }
        expect(JSON.parse(response.body).include?("Clark Joseph Kent"))
      end
    end

    it "returns a 400 with blank criteria" do
      VCR.use_cassette("superhero_bad_name_api_controller_spec") do
        get :search, params: { name: "" }
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
