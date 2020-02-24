class ArriendosController < ApplicationController
  def create
  	if params[:user].blank?
  		@notice = "No se ha seleccionado Usuario a Arrendar"
  	else
  		user = Usuario.find(params[:user].to_i)
  		a = Arriendo.new
  		a.usuario = user
  		if params[:pelicula].blank? && params[:pelicula].blank?
  			@notice = "No se ha seleccionado Pelicula o Serie"
  		else
  			if params[:serie].blank?
  				a.pelicula = Pelicula.find(params[:pelicula].to_i)
  			else
  				a.serie = Serie.find(params[:serie].to_i)
  			end
  		end
  		a.save
  		@notice = "Arriendo Guardado"
  	end
  end
end
