class WidgetController < ApplicationController
  def hurry_up_jose
    respond_to do |format|
      format.js
    end
  end
end
