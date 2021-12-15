require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
    #tests to see if we try to get a project by its index, we are successful in the GET request
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  #tests to see if we're successful getting a project when we use an index to GET a project
  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_success
    end
  end
end