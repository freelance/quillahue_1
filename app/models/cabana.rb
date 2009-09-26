class Cabana < ActiveRecord::Base
  belongs_to :complejo
  has_many :servicios
  has_many :tarifas

end
