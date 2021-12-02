require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
    # This should return the minimal set of attributes required to create a valid
    # Project. As you add validations to Project, be sure to adjust the attributes here as well.

    login_user # Logging in FactoryBot user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "Test description"}
    }

    let(:valid_session) { {} }
    describe "GET #index" do
        it "returns a success response" do
            Project.create! valid_attributes
            #get :index, params: {}, session: valid_session
            get :index, session: valid_session
            expect(response).to be_successful #expects HTTP status code of 200
            #expect(response).to have_http_status(302) #expect 302 instead
        end
    end
end