class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :direccion
      t.string :ciudad
      t.string :pais
      t.string :telefono
      t.string :email
      t.float :precio_total
      t.float :precio_unit

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
