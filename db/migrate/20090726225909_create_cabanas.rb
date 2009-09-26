class CreateCabanas < ActiveRecord::Migration
  def self.up
    create_table :cabanas do |t|
      t.string :nombre
      t.references :servicio  
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :cabanas
  end
end
