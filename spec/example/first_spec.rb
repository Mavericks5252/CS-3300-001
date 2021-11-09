require "rails_helper"

#test to tell whether rspec is working correctly
RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end