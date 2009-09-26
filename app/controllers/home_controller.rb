class HomeController < ApplicationController
  layout "home"

  def index
    @ubicacions = Ubicacion.all
  end

  def cabana
    @cabana = Cabana.find(params[:id])
    @servicos_cabana = @cabana.servicios
  end

  def ubicacions

  end

  def complejos

  end

  def contactos

  end

  def servicios
    @servicios = Servicio.all
  end

 def cipres
 end
  
  def coihue
 end
  
  def maiten
  end
  
  def lenga
 end



  def tarifas

  end

  def galerias

  end
  
  def promotions
   @promotion = Promotion.find(params[:id])
   @promocion_complejo = @complejo.promotions
  end

end
