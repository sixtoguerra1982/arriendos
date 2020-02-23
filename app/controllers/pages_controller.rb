class PagesController < ApplicationController
  def index
  	@usuarios = Usuario.all
  end
end
