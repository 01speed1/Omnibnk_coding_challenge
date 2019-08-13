require 'rails_helper'

RSpec.describe User::MoviesController, type: :controller do

  describe "GET new responds to" do
    context "text/html" do
      it "respose status 200" do
        get :new, format: :html

        expect(response.header['Content-Type']).to include('text/html')
        expect(response.status).to eq(200)
      end
    end
  end
end