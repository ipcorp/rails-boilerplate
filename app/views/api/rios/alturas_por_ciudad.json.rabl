object @puerto
attributes :altura_alerta, :altura_evacuacion, :nombre, :rio_nombre
child(@puerto.alturas.ultima){attributes :medicion}