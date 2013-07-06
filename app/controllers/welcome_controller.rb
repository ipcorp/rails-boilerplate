class WelcomeController < ApplicationController
  def index
  end

  def prueba_widget
    respond_to do |format|
      format.html{render :layout=>false}
    end
  end
end
