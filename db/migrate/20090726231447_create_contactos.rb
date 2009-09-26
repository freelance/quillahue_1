class CreateContactos < ActiveRecord::Migration
  def self.up
    create_table :contactos do |t|
      t.string :apellido
      t.string :nombre
      t.string :procedencia
      t.string :telefono
      t.string :email
      t.datetime :fecha_llegada
      t.datetime :fecha_partida
      t.integer :personas

      t.timestamps
    end
  end

  def self.down
    drop_table :contactos
  end
end
