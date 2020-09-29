require_relative "../../../lib/superhero_api/request.rb"
require 'spec_helper'

RSpec.describe Request do
  context 'when the name exists' do
    it "should retrieve data" do
      VCR.use_cassette("superhero_request_with_name") do
        request = Request.get("captain_marvel")
        expect(request).not_to be_nil
        expect(request["results"][0]["id"]) == "156"
        expect(request["results"][0]["name"]) == "Captain Marvel"
      end
    end
  end

  context 'when the name does not exist' do
    it "should raise an error" do
      VCR.use_cassette("superhero_request_no_name") do
        request = Request.get("polly_pocket")
        expect(request["response"]) == "error"
        expect(request["error"]) == "character with given name not found"
      end
    end
  end
end
