require 'rails_helper'

RSpec.describe "New", type: :feature do
  let(:user) { create(:user) }

  context "user is loged in" do
    describe "When visit user/movies/new" do
      it "Should can create a movie" do
        visit("/")

        sign_in(user)

        visit(new_user_movie_path)
        
        fill_in "movie[title]", with: "fake movie"

      end
    end
  end
end