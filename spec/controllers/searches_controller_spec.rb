require "rails_helper"

RSpec.describe SearchesController, type: :controller do
  describe "GET index" do
    it "returns a 200" do
      get :index
      expect(response).to have_http_status(:ok)
    end

    it "returns JSON" do
      Search.create!(criteria: "Captain Marvel")
      get :index
      expect(JSON.parse(response.body).include?("Captain Marvel"))
    end
  end
end
