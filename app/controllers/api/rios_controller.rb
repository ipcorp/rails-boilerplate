class Api::RiosController < ApplicationController

  def alturas_por_ciudad
    
    respond_to do |format|
      if params[:ciudad].present?
        @puerto = Puerto.find_by_nombre(params[:ciudad].upcase)
        format.json
      else
        format.json{render :text => 'falta parametro ciudad'}
      end    
    end
  end

  def index
    @rios = Rio.all
    respond_to do |format|
      format.json
    end
  end

  def rio
    respond_to do |format|
      if params[:id].present?
        @rio = Rio.find(params[:id])
        format.json
      else
        format.json{render :text => 'falta parametro id'}
      end
    end
  end

  def puerto
    respond_to do |format|
      if params[:id].present?
        @puerto = Puerto.find(params[:id])
        format.json
      else
        format.json{render :text => 'falta parametro id'}
      end
    end
  end







end
