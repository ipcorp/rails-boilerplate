object @rios
attributes :id, :nombre
child :puertos do
	attributes :nombre, :altura_alerta, :altura_evacuacion
	child :alturas do
		attributes :medicion, :fecha
	end
end