object @puerto
attributes :nombre, :altura_alerta, :altura_evacuacion
child :alturas do
  attributes :medicion, :fecha
end

