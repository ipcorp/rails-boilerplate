class WelcomeController < ApplicationController
  def index
  	@rio = Rio.find(2)
    @puerto = @rio.puertos.find(13)
    @altura = @puerto.alturas.ultima

    @semana = @puerto.alturas.semana


  end


  def prueba_widget
    respond_to do |format|
      format.html#{render :layout=>false}
    end
  end

end
