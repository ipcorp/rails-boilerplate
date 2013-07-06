class WelcomeController < ApplicationController
  def index
  	@rio = Rio.find(2)
    @puerto = @rio.puertos.find(13)
    @altura = @puerto.alturas.ultima

    @semana = @puerto.alturas.semana


  end


  def alturas_por_ciudad
    @puerto = Puerto.find_by_nombre(params[:ciudad])

    respond_to do |format|
      format.json
    end
  end






end
