class User::MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.where(user: current_user)
  end

  def show

  end

  def new
    @movie = Movie.new
  end

  def create
    byebug
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to user_movies_path
    else
      render 'new'
    end
  end


  private

  def movie_params
    params.require(:movie).permit(Movie::PERIMITED_PARAMS).fetch(:user, current_user)
  end

end