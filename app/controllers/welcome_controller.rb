class WelcomeController < ApplicationController
  def index
  	@rio = Rio.find(2)
    @puerto = @rio.puertos.find(13)
    @altura = @puerto.alturas.last


  end
end
