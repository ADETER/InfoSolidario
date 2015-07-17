class UsuariosController < ApplicationController
  def index

  	@donacion = DonacionTiempo.all + DonacionRecurso.all
    @me = current_donante

  end
  def edit

    @me = Usuarios.current
  end

end
