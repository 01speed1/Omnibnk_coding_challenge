class User::MoviesController < ApplicationController
  before_action :authenticate_user!

  def index
    @movies = Movie.where(user: current_user)
  end

  def show
    @movie = Movie.find_by(id: params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    puts movie_params
    @movie = Movie.new(movie_params.merge(user: current_user))
    if @movie.save
      redirect_to user_movies_path
    else
      render 'new'
    end
  end

  def destroy
    Movie.find(params[:id]).destroy
    redirect_to user_movies_path
  end

  private

  def movie_params
    params
      .require(:movie)
      .permit(Movie::PERIMITED_PARAMS)
  end

end