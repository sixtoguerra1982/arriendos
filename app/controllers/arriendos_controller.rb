class ArriendosController < ApplicationController
  def create
    @notice = ""
  	if params[:user].blank?
  		@notice = "No se ha seleccionado Usuario a Arrendar"
  	else
  		user = Usuario.find(params[:user].to_i)

  		if params[:pelicula].blank? && params[:serie].blank?
  			@notice = "No se ha seleccionado Pelicula o Serie"
  		else

  			peliculas = params[:pelicula]
        if ! peliculas.blank?
          peliculas.each do |pel|
            a = Arriendo.new
            a.usuario = user
            a.pelicula_id = pel.to_i
            a.save
          end
        end

        series = params[:serie]
        if ! series.blank?
          series.each do |serie|
            a = Arriendo.new
            a.usuario = user
            a.serie_id = serie.to_i
            a.save
          end
        end

  		end
  		if @notice == ""
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
    @arriendo = Arriendo.find(params[:id].to_i)
    @arriendo.destroy
    respond_to do |format|
      format.html { redirect_to arriendos_url, notice: 'Arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def index
    @arriendos = Arriendo.all.order(created_at: :desc)
    @arriendo = Arriendo.new
  end



  private
    # Only allow a list of trusted parameters through.
    def arriendo_params
      params.require(:arriendo).permit(:usuario_id, :pelicula_id, :serie_id)
    end

end
