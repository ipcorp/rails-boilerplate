class CreatePuertos < ActiveRecord::Migration
  def change
    create_table :puertos do |t|
      t.string  :nombre
      t.integer :rio_id
      t.float  :altura_alerta
      t.float  :altura_evacuacion

      t.timestamps
    end
  end
end
