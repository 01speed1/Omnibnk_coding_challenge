class HomeController < ApplicationController
  def index
    @my_movies = Movie.where(user: current_user) if user_signed_in?
    @recomended, @errors = TMDB::Popular.latest({})
  end

end