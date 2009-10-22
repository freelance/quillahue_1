class Cabana < ActiveRecord::Base
  belongs_to :complejo
  has_many :servicios
  has_many :tarifas
  has_many :fotos
  
accepts_nested_attributes_for :fotos,  :allow_destroy => true, :reject_if => proc { |attributes| attributes['name'].blank? }


end
