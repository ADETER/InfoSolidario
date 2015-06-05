class UsuariosController < ApplicationController
  def index

  	@donacion = DonacionTiempo.all + DonacionRecurso.all
  
  end
end
