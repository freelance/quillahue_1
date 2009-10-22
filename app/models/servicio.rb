class Servicio < ActiveRecord::Base
belongs_to :cabana

def self.combobox
    all.collect { |e| [e.nombre, e.id]  }
  end
end
