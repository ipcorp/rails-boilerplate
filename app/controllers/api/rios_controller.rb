class Api::RiosController < ApplicationController
  def alturas_por_ciudad
    @puerto = Puerto.find_by_nombre(params[:ciudad].upcase)

    respond_to do |format|
      format.json
    end
  end

  

end
