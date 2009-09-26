class CreatePromotions < ActiveRecord::Migration
  def self.up
    create_table :promotions do |t|
      t.string :nombre
      t.datetime :inicio
      t.datetime :caduca
      t.boolean :estado
      t.text :descripcion

      t.timestamps
    end
  end

  def self.down
    drop_table :promotions
  end
end
