class PagesController < ApplicationController
  def index
  	@usuarios = Usuario.all
  	@peliculas = Pelicula.all
  	@series = Serie.all
  	@lista = {text: "Group 1",
  		children: [ {id: '1' , text: "option 1.1" }, {id: '2' , text: "option 1.2" }],
  		text: "Group 2" ,
  		children: [ {id: '1' , text: "option 1.1" }, {id: '2' , text: "option 1.2" }]}
  end
end