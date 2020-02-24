class ArriendosController < ApplicationController
  def create
    @notice = ""
  	if params[:user].blank?
  		@notice = "No se ha seleccionado Usuario a Arrendar"
  	else
  		user = Usuario.find(params[:user].to_i)
  		a = Arriendo.new
  		a.usuario = user
  		if params[:pelicula].blank? && params[:serie].blank?
  			@notice = "No se ha seleccionado Pelicula o Serie"
  		else
  			if params[:serie].blank?
  				a.pelicula = Pelicula.find(params[:pelicula].to_i)
  			else
  				a.serie = Serie.find(params[:serie].to_i)
  			end
  		end
  		if @notice == ""
        a.save 
  		  @notice = "Arriendo Guardado"
      end
  	end
  end

  def show
    @arriendo = Arriendo.find(params[:id].to_i)
  end

  def edit
    @usuarios = Usuario.all
    @peliculas = Pelicula.all
    @series = Serie.all
    @arriendo = Arriendo.find(params[:id].to_i)
  end

  def update
    @arriendo = Arriendo.find(params[:id].to_i)
    @usuarios = Usuario.all
    @peliculas = Pelicula.all
    @series = Serie.all
    respond_to do |format|
      if @arriendo.update(arriendo_params)
        format.html { redirect_to @arriendo, notice: 'Arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @arriendo }
      else
        format.html { render :edit }
        format.json { render json: @arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    byebug
  end



  private
    # Only allow a list of trusted parameters through.
    def arriendo_params
      params.require(:arriendo).permit(:usuario_id, :pelicula_id, :serie_id)
    end

end
