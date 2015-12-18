class MoviesController < ApplicationController
 	
 	def index
		@movies = Movie.all
	end

	def show
		@Movie = Movie.find(params[:id])
	end		

	def new
		@Movie = Movie.new
	end
	def create
		permitted_params = params.require(:movie).permit(:name, :description, :location, :price, :start_at)
		@Movie = Movie.new(movie_params)
		@Movie.save
		redirect_to movie_path(@movie.id)
	end	
	def edit
		@movie = Movie.find(params[:id])
	end	
	def update
		@movie = Movie.find(params[:id])
		permitted_params = params.require(:movie).permit(:name, :description, :location, :price, :start_at)
		@movie.update(movie_params)
		redirect_to movie_path(@movie.id)
	end	
	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		redirect_to movies_url
	end	
	private
		def movie_params
			params.require(:movie).permit(:name, :description, :location, :price, :start_at)	
		end	
end
