class CreateRios < ActiveRecord::Migration
  def change
    create_table :rios do |t|
      t.string :nombre
      t.timestamps
    end
  end
end
