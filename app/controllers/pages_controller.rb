class PagesController < ApplicationController
  def index
  	@usuarios = Usuario.all
  	@peliculas = Pelicula.all
  	@series = Serie.all
  	@search = Pelicula.search(params[:q])
    @peliculas = @search.result
  end
end