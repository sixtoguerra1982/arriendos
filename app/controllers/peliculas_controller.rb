class PeliculasController < ApplicationController
	def index
		@peliculas = Pelicula.where("lower(titulo) Like ?" , "%#{params[:q][:titulo].downcase}%")
	end
end
