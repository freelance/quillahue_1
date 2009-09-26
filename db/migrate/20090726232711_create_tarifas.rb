class CreateTarifas < ActiveRecord::Migration
  def self.up
    create_table :tarifas do |t|
      t.float :precio_per_base
      t.float :precio_cab_base
      t.float :precio_p_dia
      t.float :precio_p_semana
      t.float :precio_p_fdslargo
      t.references :cabana

      t.timestamps
    end
  end

  def self.down
    drop_table :tarifas
  end
end
