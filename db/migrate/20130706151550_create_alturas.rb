class CreateAlturas < ActiveRecord::Migration
  def change
    create_table :alturas do |t|
      t.integer :puerto_id
      t.float :medicion
      t.timestamp :fecha

      t.timestamps
    end
  end
end
