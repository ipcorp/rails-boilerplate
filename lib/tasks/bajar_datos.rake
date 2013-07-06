require 'mechanize'
require 'pry'

desc 'Baja los datos de la prefectura.gob.ar'
task :actualizar_alturas => :environment do
  url = "https://prefectura.gob.ar/extranet/alturas/"

  agent = Mechanize.new

  puts "Bajando los datos..."
  agent.get url
  tabla = agent.page.search("table#GridViewAlturas").first

  tr = tabla.search("tr")

  tr.each do |t|
    if td = t.search("td")
      if td[1]
        nombre_puerto       = td[1].text
        medicion_alerta     = td[11].text.gsub(",",".").to_f
        medicion_evacuacion = td[12].text.gsub(",",".").to_f

        puerto = Puerto.where(nombre: nombre_puerto).first

        if puerto.present?
          puerto.altura_alerta     = medicion_alerta
          puerto.altura_evacuacion = medicion_evacuacion
          puerto.save

        end
      end
    end
  end
end
