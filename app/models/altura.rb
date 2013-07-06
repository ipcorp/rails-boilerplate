class Altura < ActiveRecord::Base
  attr_accessible :fecha, :medicion, :puerto_id
  belongs_to :puerto

  def todo_ok?
  	true if puerto.altura_alerta > medicion
  end
  
  def alerta?
  	true if puerto.altura_alerta <= medicion && puerto.altura_evacuacion > medicion
  end

  def evacuacion?
  	true if puerto.altura_evacuacion <= medicion
  end

  def diferencia_alerta
    (medicion - puerto.altura_alerta).round(2)
  end

  def diferencia_evacuacion
    (medicion - puerto.altura_evacuacion).round(2)
  end


  def actualizacion
  	unless fecha.blank?
  	  fecha.strftime("%d/%m/%Y")
    else
      "-"
    end
  end

end
