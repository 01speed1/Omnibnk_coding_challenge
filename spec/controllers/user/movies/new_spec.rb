require 'rails_helper'

RSpec.describe User::MoviesController, type: :controller do

  describe "GET new responds to" do
    context "text/html" do
      it "respose status 302" do
        get :new, format: :html

        expect(response.header['Content-Type']).to include('text/html')
        expect(response.status).to eq(302)
      end
    end
  end

  describe "POST create responds to" do
    context "text/html" do
      it "respose status 302" do
        post :create

        expect(response.header['Content-Type']).to include('text/html')
        expect(response.status).to eq(302)
      end
    end
  end
end