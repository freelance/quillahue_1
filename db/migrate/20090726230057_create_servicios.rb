class CreateServicios < ActiveRecord::Migration
  def self.up
    create_table :servicios do |t|
      t.string :nombre
      t.references :cabana
      t.timestamps
    end
  end

  def self.down
    drop_table :servicios
  end
end
