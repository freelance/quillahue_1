class CreateComplejos < ActiveRecord::Migration
  def self.up
    create_table :complejos do |t|
      t.string :nombre
      t.string :pais
      t.string :provincia
      t.string :ciudad
      t.string :direccion
      t.string :telefono
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :complejos
  end
end
