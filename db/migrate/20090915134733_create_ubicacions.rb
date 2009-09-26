class CreateUbicacions < ActiveRecord::Migration
  def self.up
    create_table :ubicacions do |t|
      t.text :descripcion
      t.string :tel1
      t.string :cel
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end

  def self.down
    drop_table :ubicacions
  end
end
