require "rails_helper"

RSpec.describe Search, type: :model do
  it "is valid with valid attributes" do
    expect(Search.new(criteria: "superman")).to be_valid
  end

  it "is not valid without criteria" do
    expect(Search.new(criteria: nil)).to_not be_valid
  end

  it "is not valid with criteria that is not unique" do
    Search.create(criteria: "wonder_woman")
    expect(Search.new(criteria: "wonder_woman")).to_not be_valid
  end
end
